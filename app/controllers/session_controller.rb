class SessionController < ApplicationController
    skip_before_action :authorize, only: [:create]

    def create
        user = User.find_by(email: params[:email])
        admin = Admin.find_by(email: params[:email])
     if user && user.authenticate(params[:password_digest])
       token = encode_token({user_id: user.id})
       #  session[:jwt_token] = token
         render json: {loggedin: true, user: user, jwt: token }, status: :accepted
     elsif 
      admin && admin.authenticate(params[:password_digest])
      token = encode_token({admin_id: admin.id})
      #  session[:jwt_token] = token
        render json: {loggedin: true, admin: admin, jwt: token }, status: :accepted
    

     else
       render json: { error: 'Invalid email or password' }, status: :unauthorized
     end
     end
     # clear JWT token from client's storage
   def destroy
    cookies.delete(:jwt_token)
    render json: { message: 'Logged out successfully' }
  end

  private

  def session_params
    params.permit(:email, :password_digest)
  end


end