json.extract! subject_review, :id, :name, :review, :created_at, :updated_at
json.url subject_review_url(subject_review, format: :json)
