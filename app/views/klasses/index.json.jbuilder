json.array!(@klasses) do |klass|
  json.extract! klass, :id, :workload, :distribution_process_id, :teacher_id, :grade_id
  json.url klass_url(klass, format: :json)
end
