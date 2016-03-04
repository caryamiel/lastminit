class PretaskmembershipsController < ApplicationController
  before_action :set_pretaskmembership, only: [:show, :edit, :update, :destroy]

  # GET /pretaskmemberships
  # GET /pretaskmemberships.json
  def index
    @pretaskmemberships = Pretaskmembership.all
  end

  # GET /pretaskmemberships/1
  # GET /pretaskmemberships/1.json
  def show
  end

  # GET /pretaskmemberships/new
  def new
    @pretaskmembership = Pretaskmembership.new
  end

  # GET /pretaskmemberships/1/edit
  def edit
  end

  # POST /pretaskmemberships
  # POST /pretaskmemberships.json
  def create
    @pretaskmembership = Pretaskmembership.new(pretaskmembership_params)

    respond_to do |format|
      if @pretaskmembership.save
        format.html { redirect_to @pretaskmembership, notice: 'Pretaskmembership was successfully created.' }
        format.json { render :show, status: :created, location: @pretaskmembership }
      else
        format.html { render :new }
        format.json { render json: @pretaskmembership.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pretaskmemberships/1
  # PATCH/PUT /pretaskmemberships/1.json
  def update
    respond_to do |format|
      if @pretaskmembership.update(pretaskmembership_params)
        format.html { redirect_to @pretaskmembership, notice: 'Pretaskmembership was successfully updated.' }
        format.json { render :show, status: :ok, location: @pretaskmembership }
      else
        format.html { render :edit }
        format.json { render json: @pretaskmembership.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pretaskmemberships/1
  # DELETE /pretaskmemberships/1.json
  def destroy
    @pretaskmembership.destroy
    respond_to do |format|
      format.html { redirect_to pretaskmemberships_url, notice: 'Pretaskmembership was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pretaskmembership
      @pretaskmembership = Pretaskmembership.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pretaskmembership_params
      params.require(:pretaskmembership).permit(:user_id, :pretask_id, :pretmember)
    end
end
