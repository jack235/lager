class InsController < ApplicationController
  
  def index
    @ins = In.all.order('date DESC')
  end
  
  def show
    @in = In.find(params[:id])
  end

  def new
    @in = In.new
  end
 
  def edit
    @in = In.find(params[:id])
  end

  def create
    @in = In.new(in_params)
    if @in.save
      redirect_to ins_path
    else
      render 'new'
    end
  end
  
  def destroy
    @in = In.find(params[:id])
    @in.destroy
 
    redirect_to ins_path
  end
   
  def update
    @in = In.find(params[:id])
 
    if @in.update(in_params)
      redirect_to ins_path
    else
      render 'edit'
    end
  end
 
  private
    def in_params
      params.require(:in).permit(:date, :item_id, :amount, :price, :from, :paid)
    end
end
