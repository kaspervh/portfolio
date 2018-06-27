class WorkExpsController < ApplicationController
  before_action :set_work_exp, only: [:show, :edit, :update, :destroy]
  before_action :authorize, except: [:index]

  # GET /work_exps
  # GET /work_exps.json
  def index
    @work_exps = WorkExp.order(:created_at)
  end

  # GET /work_exps/1
  # GET /work_exps/1.json
  def show
  end

  # GET /work_exps/new
  def new
    @work_exp = WorkExp.new
  end

  # GET /work_exps/1/edit
  def edit
  end

  # POST /work_exps
  # POST /work_exps.json
  def create
    @work_exp = WorkExp.new(work_exp_params)

    respond_to do |format|
      if @work_exp.save
        format.html { redirect_to @work_exp, notice: 'Work exp was successfully created.' }
        format.json { render :show, status: :created, location: @work_exp }
      else
        format.html { render :new }
        format.json { render json: @work_exp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /work_exps/1
  # PATCH/PUT /work_exps/1.json
  def update
    respond_to do |format|
      if @work_exp.update(work_exp_params)
        format.html { redirect_to @work_exp, notice: 'Work exp was successfully updated.' }
        format.json { render :show, status: :ok, location: @work_exp }
      else
        format.html { render :edit }
        format.json { render json: @work_exp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /work_exps/1
  # DELETE /work_exps/1.json
  def destroy
    @work_exp.destroy
    respond_to do |format|
      format.html { redirect_to work_exps_url, notice: 'Work exp was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_work_exp
      @work_exp = WorkExp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def work_exp_params
      params.require(:work_exp).permit(:year, :name, :description)
    end
end
