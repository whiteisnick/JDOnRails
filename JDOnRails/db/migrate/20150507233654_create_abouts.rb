class CreateAbouts < ActiveRecord::Migration
  def change
    create_table :abouts do |t|
    	t.text :description
    	t.integer :band_id 
      t.timestamps null: false
    end

    add_index :abouts, :band_id
  end
end
