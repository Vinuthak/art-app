class AddColumnsToArts < ActiveRecord::Migration[6.0]
  def change
    add_column :arts, :price, :float, after: :art_name
  end
end
