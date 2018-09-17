class Picture < ApplicationRecord
  validates :img, presence: true
  validates :title, presence: true,length: {maximum: 30}
  validates :comment, presence: true,length: {maximum: 255}


  belongs_to :user

  has_many :favorites, dependent: :destroy
  has_many :favorite_users, through: :favorites, source: :user

  mount_uploader :img, ImgUploader
end
