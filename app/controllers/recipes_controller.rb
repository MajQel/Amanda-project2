class RecipesController < ApplicationController
	def index
	end

	def show

	end

	def new
		@recipe = Recipe.new
	end

	def create
		@recipe = Recipe.new[recipe_params]
	end

	private

	def recipe_params
		params.requie[:recipe].permit[:title, :desciption]
	end

	def find_recipe
		@recipe = Recipe.find[params[:id]]
	end





end
