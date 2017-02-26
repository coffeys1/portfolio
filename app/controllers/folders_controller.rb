class FoldersController < ApplicationController



  def new
    @folder = Folder.new
  end

  def create
    @folder = Folder.new(folder_params)
    if @folder.save
      redirect_to root_url
    else
      render 'new'
    end
  end

  def edit
    #
  end

  def update
    #
  end

  def delete
    #
  end

  private
  def folder_params
    params.require(:folder).permit(:title, :icon)
  end

end
