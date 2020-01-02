class ReviewsController < ApplicationController

    def new
        @review = Review.new 
        @book = Book.find(params[:book_id])
        # @user = User.find(session[:user_id])
    end

    def create
        byebug
        @review = Review.create(review_params)
    end


    private

    def review_params
        params.require(:review).permit(:content)
        params.permit(:book_id)
        params.permit(session[:user_id])
    end
end
