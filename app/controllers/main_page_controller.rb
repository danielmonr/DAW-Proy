class MainPageController < ApplicationController
    before_action :logged
    before_action :set_cuentum, only: [:show]

    def show
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
