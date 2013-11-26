class CreateUsers < ActiveRecord::Migration
  def change
  	drop_table :users
    create_table :users do |t|
      t.string :name
      t.string :Email

      t.timestamps
    end
  end
end
