class ReviewsController < ApplicationController

    def new
        @review = Review.new 
        @book = Book.find(params[:book_id])
        # @user = User.find(session[:user_id])
    end

    def create
        review = current_user.reviews.create(review_params)
        redirect_to book_path(review.book)
    end


    private

    def review_params
        params.require(:review).permit(:content, :rating, :book_id) 
    end

end
