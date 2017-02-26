class AddFolderIdToContentItems < ActiveRecord::Migration
  def change
    add_reference :content_items, :folder, index: true
  end
end
