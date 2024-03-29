class CommentsController < ApplicationController
	def create
		@review = Review.find(params[:review_id])
		
		@comment = @review.comments.new(params.require(:comment).permit(:body))
		
		@comment.user = @comment_user
		
		@comment.save
		flash[:success] = "Your commment was posted"
		# go back to the review page
		redirect_to review_path(@review)
	end
	
end
