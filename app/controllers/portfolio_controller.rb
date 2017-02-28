class PortfolioController < ApplicationController

  require "browser"

  def home
    @folders = Folder.all
    @current_folder = @folders.first
  end

  def update_content
    @current_folder = Folder.find(params[:folder_id])
    respond_to do |format|
      format.js { render :file => '/portfolio/update_content.js.erb' }
      format.html { render '/portfolio/home' }
    end

  end

  def resume
    # static resume page for now
  end

end
