class Project < ApplicationRecord
  belongs_to :project_type, dependent: :destroy

  has_attached_file :image

  validates_attachment :image,
                     content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
end
