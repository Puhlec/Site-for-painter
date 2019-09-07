class ImagesController < ApplicationController
  before_action :authorize, only: [:new, :create, :destroy]
  before_action :set_images, only: [:index, :create, :update]
  
  def new
    @image = Context.find(params[:context_id]).images.new
  end
  def index
    @contexts = Context.all
  end   
  def show
    @image = Image.find(params[:id])
  end
  def create
    @image = Context.find(params[:context_id]).images.new(images_params)
    if @image.save(images_params)
      redirect_to action: "index"
    else
      render 'index'
    end
  end
  def edit
    @image = Image.find(params[:id])
  end
  
  def update
    @image = Image.find(params[:id])
    if @image.update(images_params)
      redirect_to context_images_path(@image.context)
    else
      redirect_to 'edit'
    end
  end
  def destroy
    @image = Image.find(params[:id])
    @image.picture.purge
    @image.destroy
    redirect_to action: "index"
  end
  private
  def set_images
    @images = Context.find(params[:context_id]).images.order(created_at: :desc)
  end
  def images_params
    params.require(:image).permit(:description, :picture, :name)
  end
end
# <imput name="mage[picture]" type="file">
