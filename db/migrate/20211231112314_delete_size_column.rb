class DeleteSizeColumn < ActiveRecord::Migration[6.0]
  def change
    remove_column :my_wines, :size
    add_column :my_wines, :size, :integer
  end
end
