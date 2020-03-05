# frozen_string_literal: true

# Model for Audit
class Audit < ApplicationRecord
  belongs_to :checklist
  belongs_to :user, optional: true
end
