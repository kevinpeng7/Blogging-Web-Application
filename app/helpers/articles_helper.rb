module ArticlesHelper
	# safer version of params
	def article_params
		params.require(:article).permit(:title, :body)
	end

	# more streamline flash messages
	def quickflash(message, title = @article.title)
		flash.notice = "Article '#{title}' #{message}"
	end
end
