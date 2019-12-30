class BooksController < ApplicationController

    def index
        @books = Book.all
    end

    def show 
        @book = Book.find(params[:id])
    end

    def new 
        @book = Book.new
        @genre = Genre.all
        @author = Author.all
    end
    
    def create
        @book = Book.create(book_params)
        if @book.valid?
            redirect_to book_path(@book)
        else
            flash[:messages] = @book.errors.full_messages
            redirect_to new_book_path
        end
    end

    def edit 
    end

    def update 
    end

    private

    def book_params
        params.require(:book).permit(:title, :author_id, :genre_id, :summary)
    end

end
