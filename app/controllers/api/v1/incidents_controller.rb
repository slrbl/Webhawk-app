module Api
    module V1
class Api::V1::IncidentsController < ApplicationController
    skip_before_action :verify_authenticity_token
    skip_before_action :authenticate_user!
    def create
    incident = Incident.new(incident_params)
        if incident.save
          render json: { status: 'SUCCESS', message: 'Incident saved', data: incident }, status: :created
        else
          render json: { status: 'ERROR', message: 'Incident not saved', errors: incident.errors }, status: :unprocessable_entity
        end
      end
  
      private
  



    def incident_params
        params.require(:incident).permit(:description, :attack_vector,:log_line,:llm_insights,:severity,:cves,:log_line_content,:status,:verdict,:host)
      end
      
end
end
end
