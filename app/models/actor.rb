class Actor < ApplicationRecord
  # Direct associations

  has_many   :roles,
             :dependent => :destroy

  # Indirect associations

  has_many   :films,
             :through => :roles,
             :source => :film

  # Validations

  # Scopes

  def to_s
    actor_dob
  end

end
