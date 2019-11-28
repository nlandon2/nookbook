require 'httparty'
class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :edit, :update, :destroy]

  def index
    @recipes = Recipe.all
  end

  def show
  end


  def new
    @recipe = Recipe.new
  end


  def edit
  end

  def create
    @recipe = current_user.recipes.new(recipe_params)

    respond_to do |format|
      if @recipe.save
        format.html { redirect_to @recipe, notice: 'Recipe was successfully created.' }
        format.json { render :show, status: :created, location: @recipe }
      else
        format.html { render :new }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @recipe.update(recipe_params)
        format.html { redirect_to @recipe, notice: 'Recipe was successfully updated.' }
        format.json { render :show, status: :ok, location: @recipe }
      else
        format.html { render :edit }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @recipe.destroy
    respond_to do |format|
      format.html { redirect_to recipes_url, notice: 'Recipe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # def search
  #   recipes = find_recipe(params[:recipe])
  #   unless recipes
  #     flash[:alert] = 'Recipe not found'
  #     return render action: :index
  #   end
  # end

  private
    def set_recipe
      @recipe = Recipe.find(params[:id])
    end

    def recipe_params
      params.require(:recipe).permit(:name, :description, :time)
    end

    # def request_api(url)
    #   response = Excon.get(
    #     url,
    #     headers: {
    #       'X-RapidAPI-Host' => URI.parse(url).host,
    #       'X-RapidAPI-Key' => ENV['RAPIDAPI_API_KEY']
    #     }
    #   )
    #   return nil if response.status != 200
    #   JSON.parse(response.body)
    # end

    # def find_recipe(name)
    #   request_api("https://edamam-recipe-search.p.rapidapi.com/search?q=#{URI.encode(name)}")
    # end
end
