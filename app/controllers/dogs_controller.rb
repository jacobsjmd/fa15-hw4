class DogsController < ApplicationController

  def new
    @dog = Dog.new
  end

  def index
    @dogs = Dog.all
  end

  def show
    @dog = Dog.find_by id: params[:id]
  end

  def create
    @dog = Dog.new
    @dog.name = params["dog"]["name"]
    @dog.age = params["dog"]["age"].to_i
    if @dog.save
      redirect_to @dog
    else
      render "new"
    end
  end
end
