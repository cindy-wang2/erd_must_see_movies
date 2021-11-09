class Role < ApplicationRecord
  # Direct associations

  belongs_to :film,
             :class_name => "Movie"

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    character
  end

end
