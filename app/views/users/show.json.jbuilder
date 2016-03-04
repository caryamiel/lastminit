json.projects @user.projects, :id, :name, :startDate, :project_confirm



json.friends @user.friends do |friend|
    json.(friend, :id, :name, :user_avatar, :email, :phonenumber)
end






