class CreateContentItems < ActiveRecord::Migration
  def change
    create_table :content_items do |t|
      t.string :name
      t.string :icon
      t.string :description
      t.string :linkto

      t.timestamps null: false
    end
  end
end
