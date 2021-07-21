class BooksController < ApplicationController

    def index
        @books = Book.all
    end

    def show
        @book = Book.find(params[:id])
    end

    def new
        @book=Book.new
    end

    def create
        @book = Book.new(contact_params)
        if @book.save 
            redirect_to books_url
        else 
            render :new
        end
    end

    def update
    end

    def edit
    end

    def destroy
    end

    private
    def contact_params
        params.require(:book).permit(:author, :title, :isbn, :cover_url) 
    end

end
