json.array!(@knowledge_groups) do |knowledge_group|
  json.extract! knowledge_group, :id, :name
  json.url knowledge_group_url(knowledge_group, format: :json)
end
