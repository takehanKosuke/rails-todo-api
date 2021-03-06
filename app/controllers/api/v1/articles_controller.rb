module Api
  module V1
    class ArticlesController < ApplicationController
      def index
        articles = Article.all
        render json: { status: 'SUCCESS', message: 'loaded the articles', data: articles }
      end

      def show
        @article = Article.find(params[:id])
        @comments = Comment.where(id: @article.id)
        render json: { status: 'SUCCESS', message: 'loaded the article', data: [@article, @comments]}
      end

      def create
        article = Article.new(article_params)
        if article.save
          render json: { status: 'SUCCESS', message: 'loaded the articles', data: article }
        else
          render json: { status: 'ERROR', message: 'loaded the articles', data: article.errors }
        end
      end

      def update
        article = Article.find(params[:id])
        if article.update(article_params)
          render json: { status: 'SUCCESS', message: 'loaded the articles', data: article }
        else
          render json: { status: 'ERROR', message: 'loaded the articles', data: article.errors }
        end
      end

      def destroy
        @article = Article.find(params[:id])
        @article.destroy
        render json: { status: 'SUCCESS', message: 'loaded the article', data: @article }
      end

      private
      def article_params
        params.require(:article).permit(:title, :body)
      end
    end
  end
end
