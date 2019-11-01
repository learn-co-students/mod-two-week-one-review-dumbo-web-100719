class SeasController < ApplicationController
  #define your controller actions here

  def index
    @sea = Sea.all
  end

  def show
    @sea = Sea.find(params[:id])
  end

  def new
    @sea = Sea.new
  end
  
  def create
    @sea = Sea.create(sea_params)
    # This is without the private method sea_params
      # @sea = Sea.new(params[:sea]) #create new sea
    redirect_to "/seas"
  end

  def edit
    @sea = Sea.find(params[:id])
  end

  def update
    @sea = Sea.find(params[:id])
    # @sea.update(params[:sea])
    byebug
    @sea.update(sea_params)
   

    # if @sea.update(sea_params)
    #   redirect_to @sea
    # else
    #   render 'edit'
    # end
    # redirect_to @sea
    # redirect_to "/seas/#{@sea.id}"
    redirect_to "/seas/#{params[:id]}"
  end

  def destroy
    @sea = Sea.find(params[:id])
    @sea.destroy
    redirect_to "/seas"
  end
  private
  # In controller actions, use this private method to access sea params from forms.
  # Example: @sea.update(sea_params)
  # check the return value of sea_params to see what you're working with!
  def sea_params
    byebug
    params.require(:seas).permit(:name, :temperature, :bio, :mood, :image_url, :favorite_color, :scariest_creature, :has_mermaids)
    byebug
  end

  
end
