class FavoriteFoodsController < ApplicationController
  before_action :set_favorite_food, only: %i[ show edit update destroy ]

  # GET /favorite_foods or /favorite_foods.json
  def index
    @favorite_foods = FavoriteFood.all
  end

  # GET /favorite_foods/1 or /favorite_foods/1.json
  def show
  end

  # GET /favorite_foods/new
  def new
    @favorite_food = FavoriteFood.new
  end

  # GET /favorite_foods/1/edit
  def edit
  end

  # POST /favorite_foods or /favorite_foods.json
  def create
    @favorite_food = FavoriteFood.new(favorite_food_params)

    respond_to do |format|
      if @favorite_food.save
        format.html { redirect_to favorite_food_url(@favorite_food), notice: "Favorite food was successfully created." }
        format.json { render :show, status: :created, location: @favorite_food }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @favorite_food.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /favorite_foods/1 or /favorite_foods/1.json
  def update
    respond_to do |format|
      if @favorite_food.update(favorite_food_params)
        format.html { redirect_to favorite_food_url(@favorite_food), notice: "Favorite food was successfully updated." }
        format.json { render :show, status: :ok, location: @favorite_food }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @favorite_food.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /favorite_foods/1 or /favorite_foods/1.json
  def destroy
    @favorite_food.destroy

    respond_to do |format|
      format.html { redirect_to favorite_foods_url, notice: "Favorite food was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_favorite_food
      @favorite_food = FavoriteFood.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def favorite_food_params
      params.require(:favorite_food).permit(:food, :user)
    end
end
