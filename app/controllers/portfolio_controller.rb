class PortfolioController < ApplicationController

  require "browser"

  def home
    @folders = Folder.all
  end

  def resume
    # static resume page for now
  end

end
