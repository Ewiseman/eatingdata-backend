module Api::V1
  class RecipesController < ApplicationController

    def index
      @recipes = Recipe.all
      render json: @recipes
    end

    def show
      @recipes = Recipe.find(params[:id])
      render json: @recipes
    end

    def create
      @recipes = Recipe.new(recipe_params)

      if @recipes.save
        render json: @recipes, status: :created
      else
        render json: @recipes.errors, status: :unprocessable_entity
      end
    end

    def update
      @recipes = Recipe.find(params[:id])
      if @recipes.update(recipe_params)
        render json: @recipes
      else
        render json: @recipes.errors, status: :unprocessable_entity
      end
    end

    def destroy
      @recipes = Recipe.find(params[:id])
      @recipes.destroy
    end
    ###############################################################
    private

    def recipe_params
      params
          .require(:recipe)
          .permit(:company, :position, :description)
    end

  end
end