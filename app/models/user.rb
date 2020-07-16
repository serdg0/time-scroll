class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :projects, dependent: :destroy

  validates :username, presence: true, length: { minimum: 3 }
  validates :email, uniqueness: true, format: Devise.email_regexp

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
