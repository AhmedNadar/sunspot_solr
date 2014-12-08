class Product < ActiveRecord::Base
  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "<150x15></150x15>0>" }
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/

  validates :name, presence: true
  validates :description, presence: true
  validates :photo, presence: true

  # enable a full-text search to be done on the name and description fields
  searchable do
    text :name, :description
  end

end
