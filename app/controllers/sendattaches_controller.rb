class SendattachesController < ApplicationController
  before_action :set_sendattach, only: [:show, :edit, :update, :destroy]

  # GET /sendattaches
  # GET /sendattaches.json
  def index
    @sendattaches = Sendattach.all
  end

  # GET /sendattaches/1
  # GET /sendattaches/1.json
  def show
  end

  # GET /sendattaches/new
  def new
    @sendattach = Sendattach.new
  end

  # GET /sendattaches/1/edit
  def edit
  end

  # POST /sendattaches
  # POST /sendattaches.json
  def create
    @sendattach = Sendattach.new(sendattach_params)
    if @sendattach.save
      SendattachMailer.send_attachment(@sendattach).deliver
      render json: {status: :success, sendattach: @sendattach}
    else
      render json: {status: :failed, sendattach: @sendattach}
    end

  end

  # PATCH/PUT /sendattaches/1
  # PATCH/PUT /sendattaches/1.json
  def update
    respond_to do |format|
      if @sendattach.update(sendattach_params)
        format.html { redirect_to @sendattach, notice: 'Sendattach was successfully updated.' }
        format.json { render :show, status: :ok, location: @sendattach }
      else
        format.html { render :edit }
        format.json { render json: @sendattach.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sendattaches/1
  # DELETE /sendattaches/1.json
  def destroy
    @sendattach.destroy
    respond_to do |format|
      format.html { redirect_to sendattaches_url, notice: 'Sendattach was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sendattach
      @sendattach = Sendattach.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sendattach_params
      params.require(:sendattach).permit(:name, :email, :description, :attachment)
    end
end
