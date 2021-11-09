class ActorResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :actor_dob, :string
  attribute :actor_name, :string
  attribute :actor_bio, :string
  attribute :actor_image, :string

  # Direct associations

  has_many   :roles

  # Indirect associations

end
