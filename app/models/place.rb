class Place < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :photos


  geocoded_by :address
  after_validation :geocode 
  
  validates :name, presence: true 
  validates :name, length: {minimum: 4}
  validates :description, presence: true
end




#Laurelton, Queens 40°40′26.69″N 73°44′41.37″W