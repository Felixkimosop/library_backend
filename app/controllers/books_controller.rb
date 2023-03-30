class BooksController < ApplicationController
  skip_before_action :authorize, only: [:index, :create, :show]

  # GET /books or /books.json
  def index
    @books = Book.all
    render json: @books
  end

  # GET /books/1 or /books/1.json
  def show
    books = set_book
    if books 
    render json: books, status: :ok
    else
      render json: { "error": "Book not found"}, status: :not_found
    end
  end



  # POST /books or /books.json
  def create
    @book = Book.new(book_params)

    respond_to do |format|
      if @book.save
        format.html { redirect_to book_url(@book), notice: "Book was successfully created." }
        format.json { render :show, status: :created, location: @book }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end



  # DELETE /books/1 or /books/1.json
  def destroy
    @book= set_book
    @book.destroy

    respond_to do |format|
      format.html { redirect_to books_url, notice: "Book was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find_by(id: params[:id])
    end

    # Only allow a list of trusted parameters through.
    def book_params
      params.require(:book).permit(:title, :image_url, :description, :admin_id)
    end
end
