class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  has_many :pins
  
  validates :name, presence: true
  validates :name, length: { minimum: 2 }
  validates :password, length: { in: 6..20 }
end
