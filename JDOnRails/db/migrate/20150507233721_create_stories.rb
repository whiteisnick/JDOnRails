class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
    	t.text :news
    	t.references :band
      t.timestamps null: false
    end
  end
end
