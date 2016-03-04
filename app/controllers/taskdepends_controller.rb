class TaskdependsController < ApplicationController
  before_action :set_taskdepend, only: [:show, :edit, :update, :destroy]

  # GET /taskdepends
  # GET /taskdepends.json
  def index
    @taskdepends = Taskdepend.all
  end

  # GET /taskdepends/1
  # GET /taskdepends/1.json
  def show
  end

  # GET /taskdepends/new
  def new
    @taskdepend = Taskdepend.new
  end

  # GET /taskdepends/1/edit
  def edit
  end

  # POST /taskdepends
  # POST /taskdepends.json
  def create
    @taskdepend = Taskdepend.new(taskdepend_params)

    respond_to do |format|
      if @taskdepend.save
        format.html { redirect_to @taskdepend, notice: 'Taskdepend was successfully created.' }
        format.json { render :show, status: :created, location: @taskdepend }
      else
        format.html { render :new }
        format.json { render json: @taskdepend.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /taskdepends/1
  # PATCH/PUT /taskdepends/1.json
  def update
    respond_to do |format|
      if @taskdepend.update(taskdepend_params)
        format.html { redirect_to @taskdepend, notice: 'Taskdepend was successfully updated.' }
        format.json { render :show, status: :ok, location: @taskdepend }
      else
        format.html { render :edit }
        format.json { render json: @taskdepend.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /taskdepends/1
  # DELETE /taskdepends/1.json
  def destroy
    @taskdepend.destroy
    respond_to do |format|
      format.html { redirect_to taskdepends_url, notice: 'Taskdepend was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_taskdepend
      @taskdepend = Taskdepend.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def taskdepend_params
      params.require(:taskdepend).permit(:task_id, :taskdependto_id)
    end
end
