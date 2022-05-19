class CreateFavoriteFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :favorite_foods do |t|
      t.string :food
      t.string :user

      t.timestamps
    end
  end
end
