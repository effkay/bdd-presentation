class AddContacts < ActiveRecord::Migration
  def up
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :location
      t.string :email
      t.string :user_agent
      t.string :http_accept_language
      t.string :referrer
      t.timestamps
    end
  end

  def down
    drop_table :contacts
  end
end
