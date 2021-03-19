module Api::V1
  class RecipesController < ApplicationController

    def index
      @recipes = Recipe.all
    end

    def show
      @recipe = Recipe.find(params[:id])
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
      @recipe = Recipe.find(params[:id])
      if @recipe.update(recipe_params)
        render json: @recipe
      else
        render json: @recipe.errors, status: :unprocessable_entity
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
            :directions,
            :multiplier,
            :health_factor,
            :type_of_food,
            :cookbook_id)
    end

  end
end