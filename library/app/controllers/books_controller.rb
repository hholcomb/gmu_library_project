class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]

  # GET /books
  # GET /books.json
  
  def index
    @books = Book.search(params[:search]).order(:title).page(params[:page])
  end

  # GET /books/1
  # GET /books/1.json
  def show
    @records=Reservation.where("book_id=?" , @book.id).all
    if @records.nil?
      @recordcount = 0
    else
      @recordcount=@records.count
    end

    @myuserid = session[:user_index]

    @myreservationsforthisbook=Reservation.where("book_id=? and user_id=?", @book.id, session[:user_index]).all
#    @myreservationsforthisbook=Reservation.where("user_id=?", session[:user_index]).all
    if @myreservationsforthisbook.nil?
      @myreservationcount = 0
    else
      @myreservationcount = @myreservationsforthisbook.count
    end
  end

# GET /books/new
  def new
    @book = Book.new
    @authors = Author.all
  end

  # GET /books/1/edit
  def edit
    @authors = Author.all
  end

  # POST /books
  # POST /books.json
  def create
    @book = Book.new(book_params)
    @book.author_id = -1
    if @book.author.to_i 
      @authors = Author.all
      @authors.each do |a|
        if @book.author.to_i == a.id
          @book.author = a.name
          @book.author_id = a.id
        end
      end
    end
    respond_to do |format|
      if @book.save
        format.html { redirect_to @book, notice: 'Book was successfully created.' }
        format.json { render action: 'show', status: :created, location: @book }
      else
        format.html { render action: 'new' }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /books/1
  # PATCH/PUT /books/1.json
  def update
    @book.update(book_params)
    @book.author_id = -1
    if @book.author.to_i 
      @authors = Author.all
      @authors.each do |a|
        if @book.author.to_i == a.id
          @book.author = a.name
          @book.author_id = a.id
        end
      end
    end
    respond_to do |format|
      if @book.save
        format.html { redirect_to @book, notice: 'Book was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /books/1
  # DELETE /books/1.json
  def destroy
    @book.destroy
    @destroybookid=@book.id
#	delete the associated reservations
    Reservation.where( "book_id ='#{@destroybookid}'").each do |deleteit|
        deleteit.delete
    end
    respond_to do |format|
      format.html { redirect_to books_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_params
      params.require(:book).permit(:isbn, :title, :author, :genre, :abstract, :pages, :image_cover_url, :published_on, :total_in_library)
    end
end
