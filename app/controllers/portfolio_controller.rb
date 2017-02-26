class PortfolioController < ApplicationController

  require "browser"

  def home
    @folders = Folder.all
    @current_folder = @folders.first
  end

  def resume
    # static resume page for now
  end

  def update_content
    
  end

end
