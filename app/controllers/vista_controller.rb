class VistaController < ApplicationController
  before_action :set_vistum, only: [:show, :edit, :update, :destroy]

  # GET /vista
  # GET /vista.json
  def index
    @vista = Vistum.all
  end

  # GET /vista/1
  # GET /vista/1.json
  def show
  end

  # GET /vista/new
  def new
    @vistum = Vistum.new
  end

  # GET /vista/1/edit
  def edit
  end

  # POST /vista
  # POST /vista.json
  def create
    @vistum = Vistum.new(vistum_params)

    respond_to do |format|
      if @vistum.save
        format.html { redirect_to @vistum, notice: 'Vistum was successfully created.' }
        format.json { render :show, status: :created, location: @vistum }
      else
        format.html { render :new }
        format.json { render json: @vistum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vista/1
  # PATCH/PUT /vista/1.json
  def update
    respond_to do |format|
      if @vistum.update(vistum_params)
        format.html { redirect_to @vistum, notice: 'Vistum was successfully updated.' }
        format.json { render :show, status: :ok, location: @vistum }
      else
        format.html { render :edit }
        format.json { render json: @vistum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vista/1
  # DELETE /vista/1.json
  def destroy
    @vistum.destroy
    respond_to do |format|
      format.html { redirect_to vista_url, notice: 'Vistum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vistum
      @vistum = Vistum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vistum_params
      params.require(:vistum).permit(:tittle)
    end
end
