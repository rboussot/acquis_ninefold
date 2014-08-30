# encoding: UTF-8

class UserlittsController < ApplicationController
  before_action :set_userlitt, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate, only: [:index, :show, :edit, :update]
  
  # GET /userlitts
  # GET /userlitts.json
  def index
    @userlitts = Userlitt.all
  end

  # GET /userlitts/1
  # GET /userlitts/1.json
  def show
  end

  # GET /userlitts/new
  def new
    @userlitt = Userlitt.new
    @oeuvre = Oeuvre.find(params[:formation])
    @user = User.all
  end

  # GET /userlitts/1/edit
  def edit
  end

  # POST /userlitts
  # POST /userlitts.json
  def create
    @userlitt = Userlitt.new(user_id: session[:user_id], oeuvre_id: params['oeuvre_id'])

    respond_to do |format|
      if @userlitt.save
        format.html { redirect_to formation_module_path(:formation => params['oeuvre_id']), notice: 'Ce cours est maintenant dans votre espace!' }
        format.json { render :show, status: :created, location: @userlitt }
      else
        format.html { redirect_to formation_module_path(:formation => params['oeuvre_id']), notice: 'Ce cours est déjà dans votre espace!' }
        format.json { render json: @userlitt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /userlitts/1
  # PATCH/PUT /userlitts/1.json
  def update
    respond_to do |format|
      if @userlitt.update(userlitt_params)
        format.html { redirect_to root_url, notice: 'Userlitt was successfully updated.' }
        format.json { render :show, status: :ok, location: @userlitt }
      else
        format.html { render :edit }
        format.json { render json: @userlitt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /userlitts/1
  # DELETE /userlitts/1.json
  def destroy
    @userlitt.destroy
    respond_to do |format|
      format.html { redirect_to :back, notice: "Ce cours n'est plus dans votre espace" }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    
    def set_userlitt
        @userlitt = Userlitt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def userlitt_params
      params.require(:userlitt).permit(:oeuvre_id, :user_id)
    end
end
