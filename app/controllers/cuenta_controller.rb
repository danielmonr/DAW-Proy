class CuentaController < ApplicationController
  include CuentaHelper
  before_action :logged
  before_action :set_cuentum, only: [:show, :edit, :update, :destroy]

  # GET /cuenta
  # GET /cuenta.json
  def index
    @cuenta = Cuentum.all
  end

  # GET /cuenta/1
  # GET /cuenta/1.json
  def show
  end

  # GET /cuenta/new
  def new
    @cuentum = Cuentum.new
  end

  # GET /cuenta/1/edit
  def edit
  end

  # POST /cuenta
  # POST /cuenta.json
  def create
    @cliente = current_user
    @cuentum = Cuentum.new(cuentum_params)
    @cuentum.saldo = 0
    @cuentum.id_usuario = @cliente.id
    respond_to do |format|
      if @cuentum.save
        format.html { redirect_to controller: 'main_page', action: 'index' and return }
        format.json { render :show, status: :created, location: @cuentum }
      else
        format.html { render :new }
        format.json { render json: @cuentum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cuenta/1
  # PATCH/PUT /cuenta/1.json
  def update
    respond_to do |format|
      if @cuentum.update(cuentum_params)
        format.html { redirect_to @cuentum, notice: 'Cuentum was successfully updated.' }
        format.json { render :show, status: :ok, location: @cuentum }
      else
        format.html { render :edit }
        format.json { render json: @cuentum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cuenta/1
  # DELETE /cuenta/1.json
  def destroy
    @cuentum.destroy
    respond_to do |format|
      format.html { redirect_to main_path, notice: 'Cuentum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cuentum
      @cuentum = Cuentum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cuentum_params
      params.require(:cuentum).permit(:descripcion, :saldo, :id_usuario)
    end

    def logged
      unless user_logged_in?
        redirect_to root_url
      end
    end
end
