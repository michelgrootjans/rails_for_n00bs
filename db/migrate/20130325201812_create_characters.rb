class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string  :name
      t.integer :hit_points
      t.integer :gold
    end
  end
end
