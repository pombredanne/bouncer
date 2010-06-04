require 'json'
require 'curb'

module Bouncer
  def self.remove_collaborator(options)
    collaborator, account, token = options[:collaborator], options[:account], options[:token]

    return puts "Must provide a account" if account.nil?
    return puts "Must provide a github token" if token.nil?
    return puts "Must provide a collaborator to remove" if collaborator.nil?

    return puts "You can't remove yourself from your projects" if !collaborator.nil? && collaborator == account

    repos = repositiories(account, token)
    repos.each do |repo|
      remove_from_project(collaborator, repo['name'], account, token)
      sleep 1 # to avoid hitting the github rate limit
    end

    puts "#{collaborator} was removed from #{repos.size} repositiories"
  end

  def self.repositiories(account, token)
    JSON.parse(Curl::Easy.http_post("https://github.com/api/v2/json/repos/show/#{account}",
                                    Curl::PostField.content('login', account),
                                    Curl::PostField.content('token', token)).body_str)['repositories']
  end

  def self.remove_from_project(collaborator, repo_name, account, token)
    result = Curl::Easy.http_post("https://github.com/api/v2/json/repos/collaborators/#{repo_name}/remove/#{collaborator}",
                                  Curl::PostField.content('login', account),
                                  Curl::PostField.content('token', token))
    remaining_collaborators = JSON.parse(result.body_str)['collaborators']

    if remaining_collaborators.include?(collaborator)
      puts "Failed to remove #{collaborator} from #{repo_name}"
    else
      puts "Removed #{collaborator} from #{repo_name}"
    end
  end
end
