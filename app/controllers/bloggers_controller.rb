class BloggersController < ApplicationController

    def new
        @blogger = Blogger.new
    end

    def create
        @blogger = Blogger.create(blogger_params)
    end
    
    def show
    end

    private

    def blogger_params
        params.require(:blogger).permit(:name, :bio, :age)
    end

    
end
