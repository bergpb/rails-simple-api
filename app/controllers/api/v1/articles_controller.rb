module Api
	module V1
		class ArticlesController < ApplicationController
			def index
				articles = Article.order('created_at DESC')
				render json: { status: 'SUCCESS', message: 'Artigos carregados.', data: articles}, status: :ok
			end

			def show
				article = Article.find(params[:id])
				render json: { status: 'SUCCESS', message: 'Artigo carregado.', data: article}, status: :ok
			end

      def create
				article = Article.new(article_params)
				if article.save
					render json: { status: 'SUCCESS', message: 'Artigo salvo.', data: article}, status: :ok
				else
					render json: { status: 'ERROR', message: 'Artigo não pode ser salvo.', data: article.errors}, status: :unprocessable_entity
				end
      end

      def update
				article = Article.find(params[:id])
				if article.update_attributes(article_params)
					render json: {status: 'SUCCESS', message:'Updated article', data:article},status: :ok
				else
					render json: {status: 'ERROR', message:'Articles not update', data:article.erros},status: :unprocessable_entity
				end
			end

			def destroy
				article = Article.find(params[:id])
				article.destroy
				render json: {status: 'SUCCESS', message:'Artigo removido.', data:article},status: :ok
      end

			private
			def article_params
				params.permit(:title, :content)
			end
		end
	end
end
