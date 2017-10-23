class CommentsController < ApplicationController
	def index
		# comments = Comment.all
		# render json: comments
		case
		when params[:author_id]
			comments = Comment.where(author_id: params[:author_id])
		when params[:artwork_id]
			comments = Comment.where(artwork_id: params[:artwork_id])
		else
			comments = Comment.all
		end
		render json: comments
	end

	def create
		comment = Comment.new(comment_params)
		if comment.save
			render json: comment, status: :created
		else
			render json: comment.errors.full_messages, status: :unprocessable_entity
		end
	end

	def destroy
		comment = Comment.find(params[:id])
		comment.destroy
		render json: comment
	end

	private
	def comment_params
		params.require(:comment).permit(:author_id, :artwork_id, :body)
	end
end
