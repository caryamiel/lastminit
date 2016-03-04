class PretasksController < ApplicationController
  before_action :set_pretask, only: [:show, :edit, :update, :destroy]

  # GET /pretasks
  # GET /pretasks.json
  def index
    @pretasks = Pretask.all
  end

  # GET /pretasks/1
  # GET /pretasks/1.json
  def show
  end

  # GET /pretasks/new
  def new
    @pretask = Pretask.new
  end

  # GET /pretasks/1/edit
  def edit
  end

  # POST /pretasks
  # POST /pretasks.json
  def create
    @pretask = Pretask.new(pretask_params)

      if @pretask.save
        render json: {status: :success, pretask: @pretask}
      else
       render json: {status: :failed, pretask: @pretask}
      end

  end

  # PATCH/PUT /pretasks/1
  # PATCH/PUT /pretasks/1.json
  def update
      if @pretask.update(pretask_params)
       render json: {status: :success, pretask: @pretask}
      else
        render json: {status: :failed, pretask: @pretasks}
      end 
  end

  # DELETE /pretasks/1
  # DELETE /pretasks/1.json
  def destroy
    @pretask.destroy
    respond_to do |format|
      format.html { redirect_to pretasks_url, notice: 'Pretask was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pretask
      @pretask = Pretask.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pretask_params
      params.require(:pretask).permit(:name, :project_id, :user_id,:opdur,:nordur,:pesdur, :activityID,:earlyStart,:earlyFinish,:lateStart,:lateFinish,:slack,:duration,:phase,:critPath )
    end
end
