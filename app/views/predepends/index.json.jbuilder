json.array!(@predepends) do |predepend|
  json.extract! predepend, :id, :pretask_id, :pretaskdependto_id
  json.url predepend_url(predepend, format: :json)
end
