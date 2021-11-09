class CreateDirectors < ActiveRecord::Migration[6.0]
  def change
    create_table :directors do |t|
      t.string :name
      t.string :image
      t.string :bio
      t.string :dob

      t.timestamps
    end
  end
end
