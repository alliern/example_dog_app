class Api::DogsController < ApplicationController

  def index
    @dogs = Dog.all 
    render "index.json.jb"
  end

  def show
    @dog = Dog.find_by(id: params["id"])
    render "show.json.jb"
  end

  def create
    if current_user
    @dog = Dog.new
    @dog.name = params[:name]
    @dog.age = params[:age]
    @dog.breed = params[:breed]
      if @dog.save
        render json: "show.json.jb"
      else
        render json: {errors: @dog.errors.full_messages}, status: 406
      end
    else
      render json: {error: "User must be signed in to create new dogs"}, status: 406
    end
  end
end
