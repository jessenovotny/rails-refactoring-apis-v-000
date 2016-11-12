class RepositoriesController < ApplicationController
  def index
    @repos_array = GithubService.new(session[:token]).get_repos
  end

  def create
    GithubService.new(session[:token]).create_repo(params[:name])
    redirect_to '/'
  end
end
