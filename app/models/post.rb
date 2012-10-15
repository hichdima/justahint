class Post < ActiveRecord::Base
  attr_accessible :category, :text, :title, :picture, :picture_file_name, :picture_content_type, :picture_file_size, :picture_updated_at
  has_attached_file :picture, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end
