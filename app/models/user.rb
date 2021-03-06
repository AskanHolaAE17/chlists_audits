# frozen_string_literal: true

# Model for User
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :checklists
  has_many :audits

  validates :email, length: { maximum: 50 }
end
