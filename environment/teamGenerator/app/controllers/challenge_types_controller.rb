class ChallengeTypesController < ApplicationController
  before_action :set_challenge_type, only: [:show, :edit, :update, :destroy]

  # GET /challenge_types
  # GET /challenge_types.json
  def index
    @challenge_types = ChallengeType.all
  end

  # GET /challenge_types/1
  # GET /challenge_types/1.json
  def show
  end

  # GET /challenge_types/new
  def new
    @challenge_type = ChallengeType.new
  end

  # GET /challenge_types/1/edit
  def edit
  end

  # POST /challenge_types
  # POST /challenge_types.json
  def create
    @challenge_type = ChallengeType.new(challenge_type_params)

    respond_to do |format|
      if @challenge_type.save
        format.html { redirect_to @challenge_type, notice: 'Challenge type was successfully created.' }
        format.json { render :show, status: :created, location: @challenge_type }
      else
        format.html { render :new }
        format.json { render json: @challenge_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /challenge_types/1
  # PATCH/PUT /challenge_types/1.json
  def update
    respond_to do |format|
      if @challenge_type.update(challenge_type_params)
        format.html { redirect_to @challenge_type, notice: 'Challenge type was successfully updated.' }
        format.json { render :show, status: :ok, location: @challenge_type }
      else
        format.html { render :edit }
        format.json { render json: @challenge_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /challenge_types/1
  # DELETE /challenge_types/1.json
  def destroy
    @challenge_type.destroy
    respond_to do |format|
      format.html { redirect_to challenge_types_url, notice: 'Challenge type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_challenge_type
      @challenge_type = ChallengeType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def challenge_type_params
      params.require(:challenge_type).permit(:name)
    end
end
