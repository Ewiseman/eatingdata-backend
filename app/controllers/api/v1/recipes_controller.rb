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
      @recipe = Recipe.find(params[:id])
      if @recipe.destroy
        head :no_content, status: :ok
      else
        render json: @event.errors, status: :unprocessable_entity
      end
    end
    ###############################################################
    private

    def recipe_params
      params
        .require(:recipe)
        .permit(
            :id,
            :name,
            :protein,
            :cusine_region,
            :on_the_menu,
            :vegetarian,
            :vegan,
            :dairy_free,
            :directions,
            :multiplier,
            :health_factor)
    end

  end
end