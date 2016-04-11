class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :email
      t.string :first_name
      t.string :last_name
      t.date :born_on
      t.string :profile_title
      t.text :profile_info
      t.integer :sun_sign_id

      t.timestamps null: false
    end
  end
end
