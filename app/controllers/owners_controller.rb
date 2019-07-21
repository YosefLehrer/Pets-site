class OwnersController < ApplicationController
  
  def index
    @owners = Owner.all
  end

  def new
    @owner = Owner.new
  end

  def edit
    @owner = Owner.find(params[:id])
  end

  def show
    @owner = Owner.find(params[:id])
  end

  def two
    @owners = []
    Owner.all.each do |owner_instance|
      if owner_instance.pets.size >= 2
        @owners << owner_instance.first_name
      end
    end
  end

  def create
    @owner = Owner.create(owner_params)
    redirect_to owner_path(@owner)
  end

  def update
    @owner = Owner.find(params[:id])
    @owner.update(owner_params)
    redirect_to owner_path(@owner)
  end

  def delete
    @owner = Owner.find(params[:id])
    @owner.destroy
    redirect_to owners_path
  end

  private
  
  def owner_params
    params.require(:owner).permit(:first_name, :last_name, :age, :email)
  end

end