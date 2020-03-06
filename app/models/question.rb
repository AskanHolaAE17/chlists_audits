# frozen_string_literal: true

# Model for Question
class Question < ApplicationRecord
  belongs_to :checklist, optional: true

  validates :title,         presence: true, length: { minimum: 12, maximum: 40 }
  validates :description,   presence: true
end
