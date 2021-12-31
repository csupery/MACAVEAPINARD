class ChangeSizeInMyWines < ActiveRecord::Migration[6.0]
  def change
    add_column :my_wines, :wine_type, :integer
  end
end
