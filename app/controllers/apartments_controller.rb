class ApartmentsController < ApplicationController
before_action :apt_params, only: [:create]

    def create
      apartment = Apartment.new(apt_params)
      if apartment.valid?
          apartment.save
          render json: apartment
      else
          render json: apartment.errors, status: :unprocessable_entity
      end
    end

    private
    
    def apt_params
      params.require(:apartment).permit(:street, :city, :zip, :state, :country)
    end

end
