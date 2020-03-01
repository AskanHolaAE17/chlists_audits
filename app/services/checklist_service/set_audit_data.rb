# frozen_string_literal: true

# Services: Module ChecklistService and its Class SetAuditData
module ChecklistService
  class SetAuditData < ApplicationService
  
    def initialize(checklist)
      @checklist = checklist
    end   

    def call   
      unless @checklist.audit   
        @checklist.build_audit  # Set Audit object to Checklist     
      else  
        @checklist.audit.touch  # Update Audit 'updated_at' field
      end  
      @checklist   # Return Checklist with the Audit object
    end
    
  end
end
