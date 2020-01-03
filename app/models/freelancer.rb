class Freelancer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options dependent: :destroy do
    has_many :proposals
    has_many :jobs, through: :proposals

    has_many :contracts


    has_and_belongs_to_many :skills
    has_one_attached :image
    # has_one_attached :avatar
  end
  # validates :phone , phone:true
end