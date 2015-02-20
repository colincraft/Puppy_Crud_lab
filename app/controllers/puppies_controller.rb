class PuppiesController < ApplicationController
  def index
    @puppies = Puppy.all
  end

  def show
  end

  def new
    @puppies = Puppy.new
  end

  def edit
  end

  def create
    @puppies = Puppy.new puppy_params
    if @puppies.save
      redirect_to "/puppies"
    else
      render :new
    end
  end

  private
  def puppy_params
    params.require(:puppy).permit(:name, :age, :breed)
  end
end
