class BooksController < ApplicationController

    def index
        @books = Book.all
    end

    def show 
        @book = Book.find(params[:id])
    end

    def new 
        @book = Book.new
        @genres = Genre.all
    end
    
    def create
        book = Book.create(book_params)
        if book.valid?
            redirect_to book_path(book)
        else
            flash[:messages] = book.errors.full_messages
            redirect_to new_book_path
        end
    end

    def edit 
        @book = Book.find(params[:id])
        @genres = Genre.all
    end

    def update 
        @book = Book.find(params[:id])
        @book.update(book_params)
        if book.valid?
            redirect_to book_path(@book)
        else
            flash[:messages] = @book.errors.full_messages
            redirect_to edit_book_path(@book)
        end
    end

    private

    def book_params
        author = Author.find_or_create_by(name: params[:author][:name])
        params[:book][:author_id] = author.id
        params.require(:book).permit(:title, :author_id, :genre_id, :summary, :picture)
    end
    

end
