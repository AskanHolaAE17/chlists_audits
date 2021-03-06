# frozen_string_literal: true

class AddUserToAudits < ActiveRecord::Migration[5.2]
  def change
    add_reference :audits, :user, foreign_key: true
  end
end
