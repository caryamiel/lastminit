json.array!(@sendattaches) do |sendattach|
  json.extract! sendattach, :id, :name, :email, :description, :attachment
  json.url sendattach_url(sendattach, format: :json)
end
