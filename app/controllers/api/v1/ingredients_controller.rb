module Api::V1
  class IngredientsController < ApplicationController

    def index
      @ingredients = Ingredient.all
    end

    def show
      @ingredient = Ingredient.find(params[:id])
      render json: @ingredient
    end

    def create
      @ingredient = Ingredient.new(ingredient_params)

      if @ingredient.save
        render json: @ingredient, status: :created
      else
        render json: @ingredient.errors, status: :unprocessable_entity
      end
    end

    def update
      @ingredients = Ingredient.find(params[:id])
      if @ingredients.update(ingredient_params)
        render json: @ingredients
      else
        render json: @ingredients.errors, status: :unprocessable_entity
      end
    end

    def destroy
      @ingredient = Ingredient.find(params[:id])
      if @ingredient.destroy
        head :no_content, status: :ok
      else
        render json: @event.errors, status: :unprocessable_entity
      end
    end
    ###############################################################
    private

    def ingredient_params
      params
        .require(:ingredient)
        .permit(
            :id,
            :name,
            :category)
    end

  end
end