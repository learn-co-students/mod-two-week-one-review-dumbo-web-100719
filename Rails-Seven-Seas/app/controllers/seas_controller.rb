class SeasController < ApplicationController
  #define your controller actions here

  def index
    @seas = Sea.all

  end

  def show
    @sea = Sea.find(params[:id])
  end

  def new
  end 

  def create
  end

  def edit
  end

  def update
  end

  def destroy
    @sea = Sea.find(params[:id])
    @sea.destroy
    
    redirect_to seas_path
  end

  private
  # In controller actions, use this private method to access sea params from forms.
  # Example: @sea.update(sea_params)
  # check the return value of sea_params to see what you're working with!
  def sea_params
    params.require(:sea).permit(:name, :temperature, :bio, :mood, :image_url, :favorite_color, :scariest_creature, :has_mermaids)
  end

end
