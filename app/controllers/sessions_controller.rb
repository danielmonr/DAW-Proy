class SessionsController < ApplicationController
	def new
	end

	def create
		user = Admin.find_by(username: params[:session][:username])
		if user
			if user.password == params[:session][:password]
				log_in user, 1
				redirect_to controller: 'main_page', action: 'index' and return
			end
		else
			user = Cliente.find_by(email: params[:session][:username])
			if user
				if user.password == params[:session][:password]
					log_in user, 2
					redirect_to controller: 'main_page', action: 'index' and return
				end
			else
				user = Empresa.find_by(nombre: params[:session][:username])
				if user
					if user.password == params[:session][:password]
						log_in user, 3
						redirect_to controller: 'main_page', action: 'index' and return
					end
				else
					flash.now[:danger] = 'Usuario invalido'
					render 'new'
				end
			end
		end
	end

	def destroy
		log_out
		redirect_to root_url
	end
end
