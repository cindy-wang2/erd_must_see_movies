class RoleResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :character, :string
  attribute :actor_id, :integer
  attribute :film_id, :integer

  # Direct associations

  belongs_to :film,
             resource: MovieResource

  # Indirect associations

end
