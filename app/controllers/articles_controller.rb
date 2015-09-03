class ArticlesController < ApplicationController
	include ArticlesHelper
	
	def index
		@articles = Article.all
	end
	def show
		@article = Article.find(params[:id])
	end
	def new
		@article = Article.new
	end
	def create
		@article = Article.new(article_params) # from ArticlesHelper
		@article.save

		quickflash("was created!") # from ArticlesHelper
		redirect_to article_path(@article)
	end
	def destroy
		@article = Article.find(params[:id])
		temporary_string = @article.title
		@article.destroy
		quickflash("was deleted.", temporary_string)
		redirect_to action: "index"
	end
	def edit
		@article = Article.find(params[:id])
	end
	def update
		@article = Article.find(params[:id])
		@article.update(article_params)

		quickflash("was updated!")

		redirect_to article_path(@article)
	end
end