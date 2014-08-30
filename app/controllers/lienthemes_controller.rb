class LienthemesController < ApplicationController
  before_action :set_lientheme, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate
  # GET /lienthemes
  # GET /lienthemes.json
  def index
    @lienthemes = Lientheme.all
  end

  # GET /lienthemes/1
  # GET /lienthemes/1.json
  def show
  end

  # GET /lienthemes/new
  def new
    @lientheme = Lientheme.new
  end

  # GET /lienthemes/1/edit
  def edit
  end

  # POST /lienthemes
  # POST /lienthemes.json
  def create
    @lientheme = Lientheme.new(lientheme_params)

    respond_to do |format|
      if @lientheme.save
        format.html { redirect_to lienthemes_url, notice: 'Lientheme was successfully created.' }
        format.json { render :show, status: :created, location: @lientheme }
      else
        format.html { render :new }
        format.json { render json: @lientheme.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lienthemes/1
  # PATCH/PUT /lienthemes/1.json
  def update
    respond_to do |format|
      if @lientheme.update(lientheme_params)
        format.html { redirect_to lienthemes_url, notice: 'Lientheme was successfully updated.' }
        format.json { render :show, status: :ok, location: @lientheme }
      else
        format.html { render :edit }
        format.json { render json: @lientheme.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lienthemes/1
  # DELETE /lienthemes/1.json
  def destroy
    @lientheme.destroy
    respond_to do |format|
      format.html { redirect_to lienthemes_url, notice: 'Lientheme was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lientheme
      @lientheme = Lientheme.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lientheme_params
      params.require(:lientheme).permit(:oeuvre_id, :theme_id)
    end
end
