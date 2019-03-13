class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception

  def verify_user
 	token = request.headers['Authorization'].sub('Bearer ', '')
 	if !token
 		return render json: 'unauthorized', status: 401
 	end
	@current_user = User.find_by(token: token)
	if !@current_user
		return render json: 'unauthorized', status: 401
	end
	@current_user		
  end

end
