class AddFilmReferenceToRoles < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :roles, :movies, column: :film_id
    add_index :roles, :film_id
    change_column_null :roles, :film_id, false
  end
end
