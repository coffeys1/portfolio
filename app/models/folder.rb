class Folder < ActiveRecord::Base
  has_many :content_items
end
