class GigsController < ApplicationController

  def index
    @gigs = Gig.all
  end
 
  def show
    @gig = Gig.find(params[:id])
  end
 
  def new
    @gig = Gig.new
  end
 
  def edit
    @gig = Gig.find(params[:id])
  end
 
  def create
    @gig = Gig.new(gig_params)
 
    if @gig.save
      redirect_to '/'
    else
      render 'new'
    end
  end
 
  def update
    @gig = Gig.find(params[:id])
 
    if @gig.update(gig_params)
      redirect_to '/'
    else
      render 'edit'
    end
  end
 
  def destroy
    @gig = Gig.find(params[:id])
    @gig.destroy
 
    redirect_to '/'
  end
 
  private
    def gig_params
      params.require(:gig).permit(:show, :show_date, :band_id)
    end

end
