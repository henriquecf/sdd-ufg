json.array!(@teachers) do |teacher|
  json.extract! teacher, :id, :name, :registry, :lattes_url, :entry_date, :formation, :workload, :about, :rg, :cpf, :birth
  json.url teacher_url(teacher, format: :json)
end
