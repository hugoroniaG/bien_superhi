class ReviewsController < ApplicationController
	
	def index 
	# this is our list page for reviews	
	
		@number = rand(100)
		
		@reviews = Review.all
		
	end
	
	def new
		# the form for adding a new review
		@review = Review.new	
		
	end
	
	def create
		# take info from the form and add it to the model
		@review = Review.new(form_params)
		
		# we want to check if the model can be saved
		# if it is, we go to the home page again
		# if it isn't, show the new form
		if @review.save
			redirect_to root_path
		else
			# show the view for new.html.erb
			render "new", status: :unprocessable_entity
		end
		
		
	end
	
	def show
		# individual review page
		@review = Review.find(params[:id])
		
		
	end
	
	def destroy
		# find the individual review
		@review = Review.find(params[:id])
		# destroy
		@review.destroy
		# redirect to homepage
		redirect_to root_path
		
	end
	
	def edit
		# find individual review to edit
		@review = Review.find(params[:id])
		
		
	end
	
	def update
		# find the individual review
		@review = Review.find(params[:id])
		# update with the new info from the form
		if @review.update(form_params)
		# redirect somewhere new
			redirect_to review_path(@review)
		else
			render "edit", status: :unprocessable_entity
		end
	end
	
	def form_params
		params.require(:review).permit(:title, :body, :score)
	end
	
		
end