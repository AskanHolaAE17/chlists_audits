# frozen_string_literal: true

# Services: Module ChecklistService and its Class SetAuditData
module ChecklistService
  # Class for setting Audit to Checklist and update data
  class SetAuditData < ApplicationService
    def initialize(checklist)
      @checklist = checklist
    end

    def call
      if @checklist.audit
        @checklist.audit.touch  # Update Audit 'updated_at' field
      else
        @checklist.build_audit  # Set Audit object to Checklist
      end
      @checklist # Return Checklist with the Audit object
    end
  end
end
