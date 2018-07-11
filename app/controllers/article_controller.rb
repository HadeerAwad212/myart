class ArticleController < ApplicationController
	def create
		article=Article.new(article_params)

		if article.save
			render json: {status: 'SUCCESS', message: 'saved article', data: article},status: :ok
		else
		render json: {status: 'ERROR', message: 'Article not saved', data:article.errors},status: :unprocessale_entity

	end	

	private

	def article_params
		params.permit(:title, :body)
	end	
end
