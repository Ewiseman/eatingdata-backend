module Api::V1
  class MeasurementsController < ApplicationController

    def index
      @measurements = Measurement.all
    end

    def show
      @measurement = Measurement.find(params[:id])
      render json: @measurement
    end

    def create
      @measurement = Measurement.new(measurement_params)

      if @measurement.save
        render json: @measurement, status: :created
      else
        render json: @measurement.errors, status: :unprocessable_entity
      end
    end

    def update
      @measurements = Measurement.find(params[:id])
      if @measurements.update(measurement_params)
        render json: @measurements
      else
        render json: @measurements.errors, status: :unprocessable_entity
      end
    end

    def destroy
      @measurement = Measurement.find(params[:id])
      if @measurement.destroy
        head :no_content, status: :ok
      else
        render json: @event.errors, status: :unprocessable_entity
      end
    end
    ###############################################################
    private

    def measurement_params
      params
        .require(:measurement)
        .permit(
            :unit,
            :type_of_measurement,
            :description,
            :recipe_id,
            :ingredient_id)
    end

  end
end