class HeraldsController < ApplicationController
  before_action :set_herald, only: [:show, :edit, :update, :destroy]

  # GET /heralds
  # GET /heralds.json
  def index
    @heralds = Herald.all
  end

  # GET /heralds/1
  # GET /heralds/1.json
  def show
  end

  # GET /heralds/new
  def new
    @herald = Herald.new
  end

  # GET /heralds/1/edit
  def edit
  end

  # POST /heralds
  # POST /heralds.json
  def create
    @herald = Herald.new(herald_params)

    respond_to do |format|
      if @herald.save
        format.html { redirect_to @herald, notice: 'Herald was successfully created.' }
        format.json { render action: 'show', status: :created, location: @herald }
      else
        format.html { render action: 'new' }
        format.json { render json: @herald.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /heralds/1
  # PATCH/PUT /heralds/1.json
  def update
    respond_to do |format|
      if @herald.update(herald_params)
        format.html { redirect_to @herald, notice: 'Herald was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @herald.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /heralds/1
  # DELETE /heralds/1.json
  def destroy
    @herald.destroy
    respond_to do |format|
      format.html { redirect_to heralds_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_herald
      @herald = Herald.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def herald_params
      params.require(:herald).permit(:message)
    end
end
