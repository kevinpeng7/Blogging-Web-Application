class CommentsController < ApplicationController
	def create
		@comments = Comment.new(comment_params)
		@comments.article_id = params[:article_id]
		@comments.save

		flash.notice = "Comment Submitted!"
		redirect_to article_path(@comments.article)
	end
	def comment_params
		params.require(:comment).permit(:author_name, :body)
	end
end
