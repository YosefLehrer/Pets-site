class PetsController < ApplicationController
  
  def index
    @pets = Pet.all
  end

  def new
    @pet = Pet.new
    @owners = Owner.all
    @species = ["Cat", "Dog", "Bird"]
  end

  def edit
    @pet = Pet.find(params[:id])
    @owners = Owner.all
    @species = ["Cat", "Dog", "Bird"]
  end

  def show
    @pet = Pet.find(params[:id])
  end

  def create
    @pet = Pet.create(pet_params)
    redirect_to pet_path(@pet)
  end

  def update
    @pet = Pet.find(params[:id])
    @pet.update(pet_params)
    redirect_to pet_path
  end

  def delete
    @pet = Pet.find(params[:id])
    @pet.destroy
    redirect_to pets_path
  end

  private
  def pet_params
    params.require(:pet).permit(:name, :species, :owner_id)
  end

end
