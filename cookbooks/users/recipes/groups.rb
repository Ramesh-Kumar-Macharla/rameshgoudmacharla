search(:groups, "*:*").each do |data|
	group data ["id"] do
		action :modify
		gid data["gid"]
		members data["members"]
		append true
	end
end
