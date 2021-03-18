module Api::V1
  class CookbooksController < ApplicationController

    def index
      @cookbooks = Cookbook.all
    end

    def show
      @cookbook = Cookbook.find(params[:id])
    end

    def create
      @cookbooks = Cookbook.new(cookbook_params)

      if @cookbooks.save
        render json: @cookbooks, status: :created
      else
        render json: @cookbooks.errors, status: :unprocessable_entity
      end
    end

    def update
      @cookbooks = Cookbook.find(params[:id])
      if @cookbooks.update(cookbook_params)
        render json: @cookbooks
      else
        render json: @cookbooks.errors, status: :unprocessable_entity
      end
    end

    def destroy
      @cookbook = Cookbook.find(params[:id])
      if @cookbook.destroy
        head :no_content, status: :ok
      else
        render json: @event.errors, status: :unprocessable_entity
      end
    end
    ###############################################################
    private

    def cookbook_params
      params
        .require(:cookbook)
        .permit(
            :id,
            :name)
    end

  end
end