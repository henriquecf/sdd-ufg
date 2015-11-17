json.array!(@distribution_processes) do |distribution_process|
  json.extract! distribution_process, :id, :semester, :klass_registry_start, :teacher_intent_start, :first_resolution_start, :substitute_resolution_start, :conclusion
  json.url distribution_process_url(distribution_process, format: :json)
end
