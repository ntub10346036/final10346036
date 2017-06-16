json.extract! paper, :id, :name, :student_id, :score, :created_at, :updated_at
json.url paper_url(paper, format: :json)
