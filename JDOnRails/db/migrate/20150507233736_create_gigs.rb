class CreateGigs < ActiveRecord::Migration
  def change
    create_table :gigs do |t|
    	t.text :show
    	t.text :show_date
    	t.references :band
      t.timestamps null: false
    end
  end
end
