class DishesController < ApplicationController
  def new
    @dish = Dish.new
  end
  
  def create
    @dish = Dish.new(dish_params)
    @dish.user_id = current_user.id
    if @dish.save
      redirect_to  dishes_path
    else
      render :new
    end
  end
  
  
  def random
    all_record = Dish.pluck(:id)
    random_id = all_record.sample
    random_record = Dish.find(random_id)
    redirect_to dish_path(random_record)
  end
  
  def show
    @dish = Dish.find(params[:id])
  end


  
  def destroy
    @dish = Dish.find(params[:id])
    @dish.destroy
    redirect_to dishes_path
  end
  
  def edit
    @dish = Dish.find(params[:id])
  end
  
  def update
    dish = Dish.find(params[:id])
    dish.update(dish_params)
    redirect_to user_path(current_user.id)
  end
  
  private
  
  def dish_params
    params.require(:dish).permit(:dish_name, :image, :material, :process, :id)
  end

  
end
