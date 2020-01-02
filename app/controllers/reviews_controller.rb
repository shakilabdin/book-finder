class ReviewsController < ApplicationController

    def new
        @review = Review.new 
        @book = Book.find(params[:book_id])
        # @user = User.find(session[:user_id])
    end

    def create
        @review = Review.create(review_params)
        redirect_to book_path(@review.book)
    end


    private

    def review_params
        params.require(:review).permit(:content, :rating)
        params.permit(:book_id)
        params.permit(session[:user_id])
    end
end
