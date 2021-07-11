module Api
  module V1
    class FitnessregsController < ApplicationController

      def index
        fitness = Fitnessreg.order('created_at')
        renderInfo(fitness, 'Request')
      end

      def show
        fitness = Fitnessreg.find(params[:id])
        renderInfo(fitness, 'Request')
      end

      def create
        fitness = Fitnessreg.new(fitness_params)
        fitness.save ? renderInfo(fitness, 'Registration created') : renderError(fitness, 'Error while registering')
      end

      def update
        fitness = Fitnessreg.find(params[:id])
        fitness.update(fitness_params) ? renderInfo(fitness, 'Updated registration') : renderError(fitness, 'Error while updating')
      end

      def destroy
        fitness = Fitnessreg.find(params[:id])
        fitness.delete ? renderInfo(fitness, 'Deleted registration') : renderError(fitness, 'Error while deleting')
      end

      def renderInfo(data, message)
        render json: {
          status: 'Success',
          message: message,
          data: data
        }, status: :ok
      end

      def renderError(data, message)
        render json: {
          status: 'Error',
          message: message,
          data: data.error
        }, status: :unprocessable_entity
      end

      def fitness_params
        params.permit(:title, :description, :img, :leftcolor, :rightcolor)
      end

    end
  end
end