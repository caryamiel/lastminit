json.extract! @project, :user, :id, :name, :project_confirm, :startDate, :project_status

json.pmembers @project.pmembers, :id,:name, :user_avatar

json.projectmemberships @project.projectmemberships, :id, :pmember_id, :user_id, :pmember


json.acivityID @project.pretasks, :activityID

json.pretasks @project.pretasks do |pretask|
  json.(pretask, :id,:name,:activityID, :opdur,:nordur,:pesdur,:earlyStart,:lateStart,:earlyFinish,:lateFinish,:duration,:slack,:phase,
  :critPath)

  json.pretaskdependtos pretask.pretaskdependtos do  |pretaskdependto|
   json.(pretaskdependto, :id,:name,:activityID,:phase,:critPath,:duration,:earlyFinish)
  end

  

  json.passive_predependtos pretask.passive_predependtos do  |passive_predependto|
   json.(passive_predependto, :id,:name,:activityID,:phase,:critPath,:duration,:earlyFinish)
  end



  json.pretmembers pretask.pretmembers do |pretmember|
    json.(pretmember, :id, :name, :user_avatar)
  end 

end