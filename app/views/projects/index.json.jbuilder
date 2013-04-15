json.array!(@projects) do |project|
  json.extract! project, :name, :description, :date_create, :owner_id_id, :status
  json.url project_url(project, format: :json)
end