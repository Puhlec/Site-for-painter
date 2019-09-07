class ContextsController < ApplicationController
  before_action :authorize, only: [:new, :create, :destroy]
  def index
    @context = Context.new
  end
  
  def new
    @context = Context.new
  end
  
  def create
    @context = Context.new(params.require(:context).permit(:name))
    if @context.save
      redirect_back fallback_location: contexts_path
    else
      render 'new'
    end
  end
  
  def destroy 
    @context = Context.find(params[:id])
    @context.destroy
  end
  
  def edit
    @context = Context.find(params[:id])
  end
  
  def update
    @context = Context.find(params[:id]) 
    if @context.update(context_params)
      redirect_back fallback_location: contexts_path
    else
      render 'edit'
    end
  end
  
  def show  
  end
  
  def context_params
    params.require(:context).permit(:name)
  end
end
