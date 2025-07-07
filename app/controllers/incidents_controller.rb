class IncidentsController < ApplicationController
  before_action :set_incident, only: %i[ show edit update destroy ]

  # GET /incidents or /incidents.json
  def index
    if params[:search]==nil or params[:search]==''
      @incidents = Incident.all
    else
    @incidents=Incident.where("log_line_content LIKE ?", "%"+params[:search]+"%")
    end 
  end




  # GET /incidents/1 or /incidents/1.json
  def show
  end

  # GET /incidents/new
  def new
    @incident = Incident.new
  end

  # GET /incidents/1/edit
  def edit
  end

  # POST /incidents or /incidents.json
  def create
    @incident = Incident.new(incident_params)

    respond_to do |format|
      if @incident.save
        format.html { redirect_to @incident, notice: "Incident was successfully created." }
        format.json { render :show, status: :created, location: @incident }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @incident.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /incidents/1 or /incidents/1.json
  def update
    respond_to do |format|
      if @incident.update(incident_params)
        format.html { redirect_to @incident, notice: "Incident was successfully updated." }
        format.json { render :show, status: :ok, location: @incident }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @incident.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /incidents/1 or /incidents/1.json
  def destroy
    @incident.destroy!

    respond_to do |format|
      format.html { redirect_to incidents_path, status: :see_other, notice: "Incident was successfully destroyed." }
      format.json { head :no_content }
    end
  end


  def assign_incident
    @incident=Incident.find(params[:incident_id])
    @incident.update(user_id:current_user.id)
    redirect_to @incident
  end 

  def find_incidents

    @incidents=Incident.where(id:params[:search])

  end 

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_incident
      @incident = Incident.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def incident_params
      params.expect(incident: [ :description, :attack_vector ])
    end
end
