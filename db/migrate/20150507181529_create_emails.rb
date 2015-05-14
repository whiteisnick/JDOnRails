class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.text :last_name
      t.text :first_name
    	t.text :email_address
      t.text :street_address
      t.text :city
      t.text :state
      t.text :zip
      t.text :phone
      t.text :url
      t.text :notes
      t.timestamps null: false
    end
  end
end
