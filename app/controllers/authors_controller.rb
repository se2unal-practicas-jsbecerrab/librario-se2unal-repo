class AuthorsController < ApplicationController
    def index
        authors = author.all
        render json: authors, status: 200
    end
end
