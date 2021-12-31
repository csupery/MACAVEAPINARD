class CreateMyWines < ActiveRecord::Migration[6.0]
  def change
    create_table :my_wines do |t|
      t.string :name
      t.references :appellation_winery, null: false, foreign_key: true
      t.integer :vintage
      t.integer :quantity
      t.string :size
      t.references :my_wine_cellar, null: false, foreign_key: true

      t.timestamps
    end
  end
end
