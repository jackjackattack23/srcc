json.array!(@students) do |student|
  json.extract! student, :id, :name, :parent1, :parent2, :email1, :email2, :email3, :email4, :classroom
  json.url student_url(student, format: :json)
end
