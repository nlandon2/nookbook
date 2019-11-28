class IngredientsController < ApplicationController

    before_action :set_recipe 

    def create 
        @ingredient = @recipe.ingredients.create(ingredient_params)
        redirect_to  @recipe
    end

    def destroy
        @ingredient = @recipe.ingredients.find(params[:id])
        if @ingredient.destroy
            flash[:success] = "Ingredient was destroyed."
        else
            flash[:error] = "Ingredient could not be destroyed."
        end
        redirect_to @recipe
    end

    private

    def set_recipe
        @recipe = Recipe.find(params[:recipe_id])
    end

    def ingredient_params
        params[:ingredient].permit(:name, :qty, :unit)
    end

end
