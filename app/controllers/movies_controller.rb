class MoviesController < ApplicationController
	before_action :set_movie, only: %i[show edit update destroy]

	def index
		@sort_column = sort_column
		@movies = Movie.order(@sort_column => :asc)
	end

	def show; end

	def new
		@movie = Movie.new
	end

	def edit; end

	def create
		@movie = Movie.new(movie_params)

		if @movie.save
			redirect_to movies_path, notice: "Filme criado com sucesso!"
		else
			flash.now[:alert] = "Não foi possível criar o filme. Verifique os erros abaixo."
			render :new, status: :unprocessable_entity
		end
	end

	def update
		if @movie.update(movie_params)
			redirect_to movie_path(@movie), notice: "Filme atualizado com sucesso!"
		else
			flash.now[:alert] = "Não foi possível atualizar o filme. Verifique os erros abaixo."
			render :edit, status: :unprocessable_entity
		end
	end

	def destroy
		@movie.destroy
		redirect_to movies_path, notice: "Filme removido com sucesso!"
	end

	private

	def set_movie
		@movie = Movie.find(params[:id])
	end

	def movie_params
		params.require(:movie).permit(:title, :rating, :release_date)
	end

	def sort_column
		allowed_columns = %w[title release_date]
		allowed_columns.include?(params[:sort]) ? params[:sort] : "title"
	end
end
