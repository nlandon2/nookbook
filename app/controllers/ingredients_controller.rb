class IngredientsController < ApplicationController

    before_action :set_recipe 
    before_action :set_ingredient, except: [:create]

    def index
        @ingredients = Ingredient.all
    end

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

    def shopping_toggle
        if @ingredient.shopping == false
            @ingredient.update_attribute(:shopping, true)
        else 
            @ingredient.update_attribute(:shopping, false)
        end
        redirect_to @recipe
    end

    private

    def set_recipe
        @recipe = Recipe.find(params[:recipe_id])
    end

    def set_ingredient
        @ingredient = @recipe.ingredients.find(params[:id])
    end

    def ingredient_params
        params[:ingredient].permit(:name, :qty, :unit, :shopping)
    end

end
