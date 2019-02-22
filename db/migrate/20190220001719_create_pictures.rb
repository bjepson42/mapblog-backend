class CreatePictures < ActiveRecord::Migration[5.2]
  def change
    create_table :pictures do |t|
      t.string :name
      t.string :description
      t.string :url
      t.string :post_id

      t.timestamps
    end
  end
end
