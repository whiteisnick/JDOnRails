class AboutsController < ApplicationController

  def index
    @abouts = About.all
  end
 
  def show
    @about = About.find(params[:id])
  end
 
  def new
    @about = About.new
  end
 
  def edit
    @about = About.find(params[:id])
  end
 
  def create
    @about = About.new(about_params)
 
    if @about.save
      redirect_to '/'
    else
      render 'new'
    end
  end
 
  def update
    @about = About.find(params[:id])
 
    if @about.update(about_params)
      redirect_to '/'
    else
      render 'edit'
    end
  end
 
  def destroy
    @about = About.find(params[:id])
    @about.destroy
 
    redirect_to '/'
  end
 
  private
    def about_params
      params.require(:about).permit(:description, :band_id)
    end

end
