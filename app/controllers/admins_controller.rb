class AdminsController < ApplicationController
  skip_before_action :authorize, only: [:index, :create]


  # GET /admins or /admins.json
  def index
    @admins = Admin.all
    render json: @admins
  end

  # GET /admins/1 or /admins/1.json
  def show
    admin = set_admin
    if admin

    render json: admin
    else 
      render json: {"error": "admin not found" }, status: :not_found 
    end
  end

  


  # POST /admins or /admins.json
  def create
    admin = Admin.create(admin_params)
   if admin
    render json: admin, status: :created
    else
      render json: {"error": "cannot be created" }, status: :not_acceptable
    end
  
  end


  def current_admin
    if logged_in?
      render json: current_admin.as_json(only: [:id, :name])
    else
      head :not_found
    end
  end


 

  # DELETE /admins/1 or /admins/1.json
  def destroy
    @admin.destroy

    respond_to do |format|
      format.html { redirect_to admins_url, notice: "Admin was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin
      @admin = Admin.find_by(id: params[:id])
    end

    def logged_in?
      !!current_admin
    end

    def current_admin
      @current_admin ||= Admin.find(session[:admin_id]) if session[:admin_id]
    end


    # Only allow a list of trusted parameters through.
    def admin_params
      params.require(:admin).permit(:name, :email, :password_digest)
    end
end
