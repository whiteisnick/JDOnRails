class CreateAbouts < ActiveRecord::Migration
  def change
    create_table :abouts do |t|
    	t.text :description
    	t.references :band 
      t.timestamps null: false
    end
  end
end
