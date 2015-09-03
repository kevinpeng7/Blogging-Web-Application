module ArticlesHelper
	# safer version of params
	def article_params
		params.require(:article).permit(:title, :body)
	end
end
