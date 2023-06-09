
class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
  before_action :authorize

  def encode_token(payload)
    # should store secret in env variable
    JWT.encode(payload, 'my_s3cr3t')
  end

  def auth_header
    # { Authorization: 'Bearer <token>' }
    request.headers['Authorization']
  end

  def decoded_token
    if auth_header
      token = auth_header.split(' ')[1]
      # header: { 'Authorization': 'Bearer <token>' }
      begin
        JWT.decode(token, 'my_s3cr3t', true, algorithm: 'HS256')
      rescue JWT::DecodeError
        nil
      end
    end
  end

  def set_current_user
    if decoded_token
      user_id = decoded_token[0]['user_id']
    

      if user_id
        @current_user = User.find_by(id: user_id)
     
    end
  end

  # def set_current_admin
  #   if decoded_token
  #     admin_id = decoded_token[0]['admin_id']

  #     if admin_id
  #       @current_admin = Admin.find_by(id: admin_id)
  #     end
  #   end
  
  
  
  end
  def logged_in?
    !!@current_user 
  end
  # def adminlog_in?
  #   !!@current_admin 
  # end
  def logged
    render json: { logged_in: logged_in?, current_user: @current_user }, include: :books
  end

  # def administration
  #   render json: { adminlog_in: adminlog_in?, current_admin: @current_admin }, include: :books
  # end
  
  def authorized_user
    render json: { message: 'Please log in as a user' }, status: :unauthorized unless logged_in? && @current_user.is_a?(User)
  end

  def authorized_admin
    render json: { message: 'Please log in as an admin' }, status: :unauthorized unless logged_in? && @current_user.is_a?(Admin)
  end

  # def authorize
  #   set_current_user 
  #   authorized_user && authorized_admin
  # end
  def authorize
    set_current_user 
  
    if logged_in?
      if @current_user.is_a?(User) || @current_user.is_a?(Admin)
        return true
      end
    end
  
    render json: { message: 'Please log in as a user or an admin' }, status: :unauthorized
  end
  
end

# class ApplicationController < ActionController::Base
#   protect_from_forgery with: :null_session
#   before_action :authorize

#   def encode_token(payload)
#     # should store secret in env variable
#     JWT.encode(payload, 'my_s3cr3t')
#   end

#   def auth_header
#     # { Authorization: 'Bearer <token>' }
#     request.headers['Authorization']
#   end

#   def decoded_token
#     if auth_header
#       token = auth_header.split(' ')[1]
#       # header: { 'Authorization': 'Bearer <token>' }
#       begin
#         JWT.decode(token, 'my_s3cr3t', true, algorithm: 'HS256')
#       rescue JWT::DecodeError
#         nil
#       end
#     end
#   end

#   def set_current_user
#     if decoded_token
#       user_id = decoded_token[0]['user_id']
#       if user_id
#         @current_user = User.find_by(id: user_id)
#       end
#     end
#   end

#   def set_current_admin
#     if decoded_token
#       admin_id = decoded_token[0]['admin_id']
#       if admin_id
#         @current_admin = Admin.find_by(id: admin_id)
#       end
#     end
#   end
  
#   def logged_in?
#     !!(@current_user || @current_admin)
#   end

#   def logged
#     render json: { logged_in: logged_in?, current_user: @current_user, current_admin: @current_admin }
#   end

#   def authorize
#     set_current_user 
#     set_current_admin

#     unless logged_in?
#       render json: { message: 'Please log in as a user or an admin' }, status: :unauthorized
#       return
#     end
    
#     unless @current_user.present? || @current_admin.present?
#       render json: { message: 'Invalid user or admin' }, status: :unauthorized
#       return
#     end
  
#     unless @current_user.nil? || @current_user.is_a?(User)
#       render json: { message: 'Please log in as a user' }, status: :unauthorized
#       return
#     end

#     unless @current_admin.nil? || @current_admin.is_a?(Admin)
#       render json: { message: 'Please log in as an admin' }, status: :unauthorized
#       return
#     end
#   end
# end
