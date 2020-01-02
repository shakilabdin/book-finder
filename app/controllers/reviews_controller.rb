class ReviewsController < ApplicationController
    before_action :find_review, only:[]
    def index
        @reviews = Review.all
    end

    def new
        @review = Review.new
    end

    def create
        @review = Review.create(review_params)
        redirect_to book_path(@review)
    end

    def show
        @review = Review.find(params[:id])
    end

    def edit
        @review = Review.find(params[:id])
    end

    def update
        @review = Review.find(params[:id])
        @review.update(review_params)
        if @review.valid?
            redirect_to review_path(@review)
        else
            flash[:messages] = @review.errors.full_messages
            redirect_to edit_review_path(@review)
        end
    end

    def delete 
        @review = Review.find(review_params)
        @review.destroy
        redirect_to book_path(@review.book)
    end

    private

    def review_params
        params.require(:review).permit(:user_id, :book_id, :content)
    end
end
