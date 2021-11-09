class CreateActors < ActiveRecord::Migration[6.0]
  def change
    create_table :actors do |t|
      t.string :actor_dob
      t.string :actor_name
      t.string :actor_bio
      t.string :actor_image

      t.timestamps
    end
  end
end
