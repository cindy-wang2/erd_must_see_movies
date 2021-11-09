class MovieResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :title, :string
  attribute :duration, :string
  attribute :description, :string
  attribute :year, :string
  attribute :poster, :string
  attribute :director_id, :integer

  # Direct associations

  has_many   :bookmarks

  has_many   :reviews

  has_many   :roles,
             foreign_key: :film_id

  belongs_to :director

  # Indirect associations

  many_to_many :reviewers,
               resource: UserResource

  many_to_many :bookmarkers,
               resource: UserResource

end
