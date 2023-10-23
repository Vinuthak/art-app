class CreateArts < ActiveRecord::Migration[6.0]
  def change
    create_table :arts do |t|
      t.integer :artist_id
      t.string :art_name
      t.integer :year

      t.timestamps
    end
  end
end
