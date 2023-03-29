class UsersController < ApplicationController
  skip_before_action :authorize, only: [:index, :create]

  # GET /users or /users.json
  def index
    @users = User.all
    render json: @users
  end

  def add_book
    @user = User.find_by(id: params[:id])
    @book = Book.find_by(id: params[:book_id])

    if @user.books.include?(@book)
      render json: { error: "Book already added to collection" }, status: :unprocessable_entity
    else
      @user.books << @book
      render json: { success: "Book added to collection" }
    end
  end

  # GET /users/1 or /users/1.json
  # def show
  #   @users = set_user  
  #   render json: @users, status: :ok
    
  # end

  def show
    names = User.find_by(name: params[:name])
    if names

    render json: names, status: :ok
    else
      render json: {"error": "No such user"}, status: :not_found
    end
  end

 

  # POST /users or /users.json
  def create
    user = User.create(user_params)

    if user
      render json: user, status: :created
      else
        render json: {"error": "cannot be created" }, status: :not_acceptable
      end
      
  end
 

  
  # DELETE /users/1 or /users/1.json
  def destroy
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url, notice: "User was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find_by(id: params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.permit(:name, :email, :password_digest)
    end
end
