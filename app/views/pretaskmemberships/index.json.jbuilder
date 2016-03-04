json.array!(@pretaskmemberships) do |pretaskmembership|
  json.extract! pretaskmembership, :id, :user_id, :pretask_id, :pretmember
  json.url pretaskmembership_url(pretaskmembership, format: :json)
end
