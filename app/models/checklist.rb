# frozen_string_literal: true

# Model for Checklist
class Checklist < ApplicationRecord

  has_many :questions, dependent: :destroy
  has_one  :audit
  
  # Settings for dinamical adding Questions to Checklists
  accepts_nested_attributes_for :questions, 
          allow_destroy: true, 
          reject_if: proc { |att| att['title'].blank? }  

  validates :title,         presence: true, length: { maximum: 40 }
  validates :description,   presence: true
end
