class ReviewsController < ApplicationController
  before_action :find_book
  before_action :find_review, only: [:edit, :update, :destroy]
  before_action :correct_user,   only: [:edit, :update, :destroy]
  
  def new
    @review = Review.new
  end
  
  def show
    
  end
  
  def create
   
    @review = Review.new(review_params)
    @review.book_id = @book.id
    @review.user_id = current_user.id
    
    respond_to do |format|
      if @review.save
        format.html { redirect_to @book, notice: 'Review was successfully created.' }
        format.json { render :show, status: :created, location: @book }
      else
        format.html { render :new }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def correct_user
    redirect_to(root_url) unless current_user?(@review.user) 
  end
  
  def edit
 
  end
  
  def update 
    respond_to do |format|
      if @review.update(review_params)
        format.html { redirect_to @book, notice: 'Review was successfully updated.' }
        format.json { render :show, status: :ok, location: @book }
      else
        format.html { render :edit }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
    
  end
  
  def destroy
		@review.destroy
		redirect_to book_path(@book)
	end
  
  private
  
  def review_params
    params.require(:review).permit(:rating, :comment)
  end
  
  def find_book
    @book = Book.find(params[:book_id])
  end
  
  def find_review
    @review = Review.find(params[:id])
  end
end
