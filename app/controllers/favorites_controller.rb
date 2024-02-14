class FavoritesController < ApplicationController
  def create
    dish = Dish.find(params[:dish_id])
    favorite = current_user.favorites.new(dish_id: dish.id)
    favorite.save
    redirect_to dish_path(dish)
  end
  
  def destroy
    dish = Dish.find(params[:dish_id])
    favorite = current_user.favorites.find_by(dish_id: dish.id)
    favorite.destroy
    redirect_to dish_path(dish)
  end
  
end
