class PatientController < ApplicationController
  before_action :authenticate_user!

  # GET /surgeries
  # GET /surgeries.json
  def index
    @surgeries = Surgery.all
  end


  # /def get_patient_name
  # 	@surgery = surgery.new
  # 	<%= @surgery.patient_name %>/
end
