class Movie < ApplicationRecord
  # Direct associations

  has_many   :bookmarks,
             :dependent => :destroy

  has_many   :reviews,
             :dependent => :destroy

  has_many   :roles,
             :foreign_key => "film_id",
             :dependent => :destroy

  belongs_to :director

  # Indirect associations

  has_many   :bookmarkers,
             :through => :bookmarks,
             :source => :user

  # Validations

  # Scopes

  def to_s
    title
  end

end
