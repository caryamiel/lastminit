json.array!(@pretasks) do |pretask|
  json.extract! pretask, :id, :name
  json.url pretask_url(pretask, format: :json)
end
