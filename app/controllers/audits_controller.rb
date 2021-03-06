# frozen_string_literal: true

# Controller for managing the Audits
class AuditsController < ApplicationController
  before_action :set_audit, only: %i[show destroy]

  def index
    @audits = Audit.page(params[:page]).per(10)
    @checklists = Checklist.where published: true
  end

  def show
    @checklist = Checklist.find(@audit.checklist_id)
  end

  def destroy
    @audit.destroy
    redirect_to audits_path, notice: 'Audit was successfully destroyed.'
  end

  private

  def set_audit
    @audit = Audit.find(params[:id])
  end

  def checklist_params
    params # Allows a list of trusted parameters for Audit update
      .require(:checklist)
      .permit(:title, :description,
              questions_attributes:
              Question.attribute_names.map(&:to_sym).push(:_destroy))
  end
end
