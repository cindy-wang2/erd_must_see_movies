class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :duration
      t.string :description
      t.string :year
      t.string :poster
      t.integer :director_id

      t.timestamps
    end
  end
end
