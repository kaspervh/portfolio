class Project < ApplicationRecord
  belongs_to :project_type, dependent: :destroy
  has_many :project_links
  accepts_nested_attributes_for :project_links, 
  								allow_destroy: true,
  								reject_if: :all_blank


  has_attached_file :image

  validates_attachment :image,
                     content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }

end
