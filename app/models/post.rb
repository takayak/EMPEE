class Post < ApplicationRecord
  validates :title, presence: true
  mount_uploader :image, ImageUploader

  has_many :requests ,dependent: :destroy
  
end
