json.extract! progress, :id, :user_id, :challenge_id, :points_earned, :update_frequency, :created_at, :updated_at
json.url progress_url(progress, format: :json)
