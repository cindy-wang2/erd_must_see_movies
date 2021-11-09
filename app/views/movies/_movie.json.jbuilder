json.extract! movie, :id, :title, :duration, :description, :year, :poster,
              :director_id, :created_at, :updated_at
json.url movie_url(movie, format: :json)
