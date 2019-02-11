module Api
  module V1
    class CommentsController < ApplicationController
      def index
        articles = Comment.all
        render json: { status: 'SUCCESS', message: 'loaded the articles', data: articles }
      end

      def show
        article = Comment.find(params[:id])
        render json: { status: 'SUCCESS', message: 'loaded the article', data: article }
      end

      def create
        article = Comment.new(article_params)
        if article.save
          render json: { status: 'SUCCESS', message: 'loaded the articles', data: articles }
        else
          render json: { status: 'ERROR', message: 'loaded the articles', data: article.errors }
        end
      end

      def update
        article = Comment.find(params[:id])
        if article.update(params[:id])
          render json: { status: 'SUCCESS', message: 'loaded the articles', data: article }
        else
          render json: { status: 'ERROR', message: 'loaded the articles', data: article.errors }
        end
      end

      def dalete
        article = Comment.find(params[:id])
        article.destroy
        render json: { status: 'SUCCESS', message: 'loaded the article', data: article }
      end

      private
      def article_params
        params.require(:article).permit(:title, :body)
      end
    end
  end
end
