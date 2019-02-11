module Api
  module V1
    class CommentsController < ApplicationController
      def create
        comment = Comment.new(comment_params)
        if comment.save
          render json: { status: 'SUCCESS', message: 'loaded the comments', data: comments }
        else
          render json: { status: 'ERROR', message: 'loaded the comments', data: comment.errors }
        end
      end

      def update
        comment = Comment.find(params[:id])
        if comment.update(params[:id])
          render json: { status: 'SUCCESS', message: 'loaded the comments', data: comment }
        else
          render json: { status: 'ERROR', message: 'loaded the comments', data: comment.errors }
        end
      end

      def dalete
        comment = Comment.find(params[:id])
        comment.destroy
        render json: { status: 'SUCCESS', message: 'loaded the comment', data: comment }
      end

      private
      def comment_params
        params.require(:comment).permit(:body, :article_id)
      end
    end
  end
end
