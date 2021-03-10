module Api::V1
  class RecipesController < ApplicationController

    def index
      @recipes = Recipe.all
    end

    def show
      @recipe = Recipe.find(params[:id])
      render json: @recipe
    end

    def create
      @recipe = Recipe.new(recipe_params)

      if @recipe.save
        render json: @recipe, status: :created
      else
        render json: @recipe.errors, status: :unprocessable_entity
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
            :health_factor,
            :cookbook_id)
    end

  end
end