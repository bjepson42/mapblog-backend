class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :first
      t.string :last
      t.string :blogname
      t.string :blogdescription
      t.string :email

      t.timestamps
    end
  end
end
