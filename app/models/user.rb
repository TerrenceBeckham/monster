class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :places
  has_many :comments
  
end



=begin class Car
  def initialize(user_name, last_name)
    @user_name = user_name
    @last_name = last_name
  end


  def self.who_am_i   #class method
    puts "I am the car"
  end


  def hello
    puts "Hello #{@user_name} #{@last_name}"
    goodbye
  end



  private  #can only be used by other methods in this class used to hide functionality from the user.

  def goodbye
    puts "Goodbye #{@user_name}"
  end
end


sports_car =Car.new("Teri", "Beckham")
sports_car.hello
Car.who_am_i '''
=end




