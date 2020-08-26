json.extract! student_testimony, :id, :type, :url, :text, :full_name, :email, :status, :created_at, :updated_at
json.url student_testimony_url(student_testimony, format: :json)
