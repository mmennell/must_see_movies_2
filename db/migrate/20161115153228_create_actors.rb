class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      t.string :name
      t.text :bio
      t.string :image_url
      t.integer :dob

      t.timestamps

    end
  end
end
