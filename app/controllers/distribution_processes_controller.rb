class DistributionProcessesController < ApplicationController
  before_action :set_distribution_process, only: [:show, :edit, :update, :destroy]

  load_and_authorize_resource

  # GET /distribution_processes
  # GET /distribution_processes.json
  def index
    @distribution_processes = DistributionProcess.all
  end

  # GET /distribution_processes/1
  # GET /distribution_processes/1.json
  def show
  end

  # GET /distribution_processes/new
  def new
    @distribution_process = DistributionProcess.new
  end

  # GET /distribution_processes/1/edit
  def edit
  end

  # POST /distribution_processes
  # POST /distribution_processes.json
  def create
    @distribution_process = DistributionProcess.new(distribution_process_params)

    respond_to do |format|
      if @distribution_process.save
        format.html { redirect_to @distribution_process, notice: 'Distribution process was successfully created.' }
        format.json { render :show, status: :created, location: @distribution_process }
      else
        format.html { render :new }
        format.json { render json: @distribution_process.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /distribution_processes/1
  # PATCH/PUT /distribution_processes/1.json
  def update
    respond_to do |format|
      if @distribution_process.update(distribution_process_params)
        format.html { redirect_to @distribution_process, notice: 'Distribution process was successfully updated.' }
        format.json { render :show, status: :ok, location: @distribution_process }
      else
        format.html { render :edit }
        format.json { render json: @distribution_process.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /distribution_processes/1
  # DELETE /distribution_processes/1.json
  def destroy
    @distribution_process.destroy
    respond_to do |format|
      format.html { redirect_to distribution_processes_url, notice: 'Distribution process was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_distribution_process
      @distribution_process = DistributionProcess.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def distribution_process_params
      params.require(:distribution_process).permit(:semester, :klass_registry_start, :teacher_intent_start, :first_resolution_start, :substitute_resolution_start, :conclusion)
    end
end
