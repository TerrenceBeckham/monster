class Place < ActiveRecord::Base
  belongs_to :user
  validates :name, presence: true & :name, length: {minimum: 4}
  validates :description, presence: true
end
