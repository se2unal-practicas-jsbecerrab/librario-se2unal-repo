class BooksController < ApplicationController
    def index
        author = Author.find(params[:author_id])
        if author
            books = Book.all
            respond_to do |format|
                format.html {render html: "hola mundo", status: 200}
                format.json {render json: books, status:200}
                end
        end
    end
    
    def create
        book = Book.new(params_book)
        if book.save
            respond_to do |format|
            format.json {render json: book, status:201}
        end
    else
         respond_to do |format|
            format.json {render json: book.errors, status:unprocessable_entity}
        end
        end 
    end
    def params_book
        params.permit(:name, :year, :code, :available)
    end
    
    def show
        book = Book.find(params[:id])
         respond_to do |format|
            format.json {render json: book, status:200}
        end
    end 
    def destroy
        book = Book.find(params[:id])
        book.destroy
        respond_to do |format|
            format.json {render json: book, status:200}
        end
    end
    def update 
        book = Book.find(params[:id])
        if book.update(params_book)
            render json: book, status: 200
        else
            render json: book.errors, status: 200
        end
    end
    
end

