module SessionsHelper
  def log_in (user, tipo)
		session[:user_id] = user.id
		session[:type] = tipo
	end

	def current_user
		case session[:type]
		when 2
			Cliente.find(session[:user_id])
		when 1
			Admin.find(session[:user_id])
		when 3
			Empresa.find(session[:user_id])
		else
			nil
		end
	end

	def cliente_logged_in?
		user_logged_in? && session[:type] == 2
	end

	def empresa_logged_in?
		user_logged_in? && session[:type] == 3
	end

	def user_logged_in?
		!current_user.nil?
	end

	def admin_logged_in?
		user_logged_in? && session[:type] == 1
	end

	def log_out
		session.delete(:user_id)
		session.delete(:type)
		@current_user = nil
	end
end
