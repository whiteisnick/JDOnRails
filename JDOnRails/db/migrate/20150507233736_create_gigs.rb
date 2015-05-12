class CreateGigs < ActiveRecord::Migration
  def change
    create_table :gigs do |t|
    	t.text :show
    	t.text :show_date
    	t.integer :band_id
      t.timestamps null: false
    end

    add_index :gigs, :band_id
  end
end
