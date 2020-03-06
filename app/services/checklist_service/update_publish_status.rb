# frozen_string_literal: true

# Services: Module ChecklistService and its Class UpdatePublishStatus
module ChecklistService
  # Class for updating Checklist publish status
  class UpdatePublishStatus < ApplicationService
    def initialize(checklist)
      @checklist = checklist
    end

    def call
      @checklist.published = !@checklist.published
      @status_ar = %w[Unpublish Publish]
      @status_ar.delete(@checklist.next_publish_status)
      @checklist.next_publish_status = @status_ar[0]
      @checklist.save
    end
  end
end
