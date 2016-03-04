json.array!(@taskdepends) do |taskdepend|
  json.extract! taskdepend, :id, :task_id, :taskdependto_id
  json.url taskdepend_url(taskdepend, format: :json)
end
