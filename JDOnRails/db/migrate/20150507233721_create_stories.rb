class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
    	t.text :news
    	t.integer :band_id
      t.timestamps null: false
    end

    add_index :stories, :band_id
  end
end
