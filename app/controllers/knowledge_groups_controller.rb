class KnowledgeGroupsController < ApplicationController
  before_action :set_knowledge_group, only: [:show, :edit, :update, :destroy]

  load_and_authorize_resource

  # GET /knowledge_groups
  # GET /knowledge_groups.json
  def index
    @knowledge_groups = KnowledgeGroup.all
  end

  # GET /knowledge_groups/1
  # GET /knowledge_groups/1.json
  def show
  end

  # GET /knowledge_groups/new
  def new
    @knowledge_group = KnowledgeGroup.new
  end

  # GET /knowledge_groups/1/edit
  def edit
  end

  # POST /knowledge_groups
  # POST /knowledge_groups.json
  def create
    @knowledge_group = KnowledgeGroup.new(knowledge_group_params)

    respond_to do |format|
      if @knowledge_group.save
        format.html { redirect_to @knowledge_group, notice: 'Knowledge group was successfully created.' }
        format.json { render :show, status: :created, location: @knowledge_group }
      else
        format.html { render :new }
        format.json { render json: @knowledge_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /knowledge_groups/1
  # PATCH/PUT /knowledge_groups/1.json
  def update
    respond_to do |format|
      if @knowledge_group.update(knowledge_group_params)
        format.html { redirect_to @knowledge_group, notice: 'Knowledge group was successfully updated.' }
        format.json { render :show, status: :ok, location: @knowledge_group }
      else
        format.html { render :edit }
        format.json { render json: @knowledge_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /knowledge_groups/1
  # DELETE /knowledge_groups/1.json
  def destroy
    @knowledge_group.destroy
    respond_to do |format|
      format.html { redirect_to knowledge_groups_url, notice: 'Knowledge group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_knowledge_group
      @knowledge_group = KnowledgeGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def knowledge_group_params
      params.require(:knowledge_group).permit(:name)
    end
end
