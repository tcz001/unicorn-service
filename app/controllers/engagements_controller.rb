class EngagementsController < ApplicationController
  before_action :set_engagement, only: [:show, :edit, :update, :destroy]
  skip_before_filter :verify_authenticity_token

  # GET /engagements
  # GET /engagements.json
  def index
    @engagements = Engagement.unscoped.all
  end

  # GET /engagements/1
  # GET /engagements/1.json
  def show
  end

  # GET /engagements/new
  def new
    @engagement = Engagement.new
  end

  # GET /engagements/1/edit
  def edit
  end

  # POST /engage
  # POST /engage.json
  def engage
    puts params.inspect
    engage_param = params.require(:engage).permit(:UUID, :major, :minor, :unicorn_id)

    @engagement = Engagement.new({:beacon_id => Beacon.find_by(
        {:UUID => engage_param[:UUID],
         :major => engage_param[:major],
         :minor => engage_param[:minor]
        }).id,
                                  :unicorn_id => engage_param[:unicorn_id]
                                 })

    respond_to do |format|
      if @engagement.save
        format.html { redirect_to @engagement, notice: 'Engagement was successfully created.' }
        format.json { render :show, status: :created, location: @engagement }
      else
        format.html { render :new }
        format.json { render json: @engagement.errors, status: :unprocessable_entity }
      end
    end
  end

  # POST /engagements
  # POST /engagements.json
  def create
    @engagement = Engagement.new(engagement_params)

    respond_to do |format|
      if @engagement.save
        format.html { redirect_to @engagement, notice: 'Engagement was successfully created.' }
        format.json { render :show, status: :created, location: @engagement }
      else
        format.html { render :new }
        format.json { render json: @engagement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /engagements/1
  # PATCH/PUT /engagements/1.json
  def update
    respond_to do |format|
      if @engagement.update(engagement_params)
        format.html { redirect_to @engagement, notice: 'Engagement was successfully updated.' }
        format.json { render :show, status: :ok, location: @engagement }
      else
        format.html { render :edit }
        format.json { render json: @engagement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /engagements/1
  # DELETE /engagements/1.json
  def destroy
    @engagement.destroy
    respond_to do |format|
      format.html { redirect_to engagements_url, notice: 'Engagement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_engagement
      @engagement = Engagement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def engagement_params
      params.require(:engagement).permit(:beacon_id, :unicorn_id)
    end
end
