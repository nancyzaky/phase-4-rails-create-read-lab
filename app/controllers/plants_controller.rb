class PlantsController < ApplicationController
  wrap_parameters format: []
def index
plants = Plant.all
render json: plants
end
def show
  plant = Plant.find(params[:id])
  render json: plant
end

def create
  plant = Plant.create(plant_params)
  render json: plant, status: :created
end
def plant_params
params.permit(:name, :price,:image)
end
end