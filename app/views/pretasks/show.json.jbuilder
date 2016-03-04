json.extract! @pretask, :id, :name, :opdur, :nordur,:pesdur,:duration,:slack,:earlyStart,:earlyFinish,:lateStart,:lateFinish,:phase,:critPath, :created_at, :updated_at

json.pretaskdependtos @pretask.pretaskdependtos do |pretaskdependto|
   json.(pretaskdependto, :id, :name, :activityID,:phase,:critPath,:earlyFinish)
end
json.passive_predependtos @pretask.passive_predependtos do  |passive_predependto|
   json.(passive_predependto, :id,:name,:activityID,:phase,:critPath,:duration,:earlyFinish)
end

json.pretmembers @pretask.pretmembers do |pretmember|
		json.(pretmember, :id, :name, :user_avatar)
end	