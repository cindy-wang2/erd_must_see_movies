class Movie < ApplicationRecord
  # Direct associations

  has_many   :roles,
             :foreign_key => "film_id",
             :dependent => :destroy

  belongs_to :director

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    title
  end

end
