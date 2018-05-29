class UseridsController < ApplicationController
  before_action :set_userid, only: [:show, :edit, :update, :destroy]

  # GET /userids
  # GET /userids.json
  def index
    @userids = Userid.all
  end

  # GET /userids/1
  # GET /userids/1.json
  def show
  end

  # GET /userids/new
  def new
    @userid = Userid.new
  end

  # GET /userids/1/edit
  def edit
  end

  # POST /userids
  # POST /userids.json
  def create
    @userid = Userid.new(userid_params)

    respond_to do |format|
      if @userid.save
        format.html { redirect_to @userid, notice: 'Userid was successfully created.' }
        format.json { render :show, status: :created, location: @userid }
      else
        format.html { render :new }
        format.json { render json: @userid.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /userids/1
  # PATCH/PUT /userids/1.json
  def update
    respond_to do |format|
      if @userid.update(userid_params)
        format.html { redirect_to @userid, notice: 'Userid was successfully updated.' }
        format.json { render :show, status: :ok, location: @userid }
      else
        format.html { render :edit }
        format.json { render json: @userid.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /userids/1
  # DELETE /userids/1.json
  def destroy
    @userid.destroy
    respond_to do |format|
      format.html { redirect_to userids_url, notice: 'Userid was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_userid
      @userid = Userid.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def userid_params
      params.require(:userid).permit(:nombres, :apellidos, :email, :string, :telefono, :string, :direccion,  :pais,  :ciudad, :direccion,  :solicitud,  :detalles, )
    end
end
