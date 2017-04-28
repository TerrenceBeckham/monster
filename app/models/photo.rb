class Photo < ActiveRecord::Base
  belongs_to :place
  has_many :photos
  mount_uploader :picture, PictureUploader
  validates :picture, presence: true


end
