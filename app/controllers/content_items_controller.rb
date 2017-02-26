class ContentItemsController < ApplicationController
  def new
    @folders = Folder.all
    @item = ContentItem.new
  end

  def create
    @item = ContentItem.new(content_item_params)
    if @item.save
      redirect_to root_url
    else
      render 'new'
    end
  end

  def update
  end

  def delete
  end

  def show
  end

  private
  def content_item_params
    params.require(:content_item).permit(:name, :icon, :description, :folder_id)
  end
end
