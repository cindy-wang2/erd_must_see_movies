json.extract! actor, :id, :actor_dob, :actor_name, :actor_bio, :actor_image,
              :created_at, :updated_at
json.url actor_url(actor, format: :json)
