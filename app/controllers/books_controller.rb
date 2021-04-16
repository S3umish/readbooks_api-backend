class BooksController < ApplicationController
    def index 
        books = Book.all 
    
        render json: BookSerializer.new(books)
        
    end

    def show 
        book = Book.find(params[:id])
        render json: book.to_json(except: [:created_at, :updated_at], include: {category: {only: [:name]}})
    end

    def create 
        book = Book.new(book_params)
        if book.save 
            render json: BookSerializer.new(book)
        else
            render json: {error: "could not save"}
        end
    end

    def destroy 
        book = Book.find(params[:id])
        book.destroy 
        render json: {message: "successfully deleted #{book.name}"}
    end

    def update 
        book = Book.find(params[:id])
        if book.update(book_params)
            render json: BookSerializer.new(book)
        else
            render json: {error: "could not save"}
        end
    end

    private 

    def book_params
        params.require(:book).permit(:title, :image_url, :likes, :remarks, :category_id)
    end
end
