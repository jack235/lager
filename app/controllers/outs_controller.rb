class OutsController < ApplicationController
  
  def index
    @outs = Out.all.order('date DESC')
  end
  
  def show
    @out = Out.find(params[:id])
  end

  def new
    @out = Out.new
  end
 
  def edit
    @out = Out.find(params[:id])
  end

  def create
    @out = Out.new(out_params)
    if @out.save
      redirect_to outs_path
    else
      render 'new'
    end
  end
  
  def destroy
    @out = Out.find(params[:id])
    @out.destroy
 
    redirect_to outs_path
  end
   
  def update
    @out = Out.find(params[:id])
 
    if @out.update(out_params)
      redirect_to outs_path
    else
      render 'edit'
    end
  end  
 
  private
    def out_params
      params.require(:out).permit(:date, :item_id,  :amount, :price, :to, :paid)
    end
end
