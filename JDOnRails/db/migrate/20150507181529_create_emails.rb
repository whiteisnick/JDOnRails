class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
    	t.text :email_address
      t.timestamps null: false
    end
  end
end
