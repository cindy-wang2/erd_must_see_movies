class ReviewResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :movie_id, :integer
  attribute :user_id, :integer
  attribute :star_rating, :string
  attribute :review, :string

  # Direct associations

  belongs_to :movie

  # Indirect associations

end
