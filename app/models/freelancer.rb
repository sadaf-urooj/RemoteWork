class Freelancer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :proposals 
  has_many :jobs, :through => :proposals

  has_many :contracts
  has_many :jobs, :through => :contracts

  has_and_belongs_to_many :skills
end
