require 'pstore'

data = PStore.new("filename.pstore")

data.transaction do 
	data["countries"] = [ "England", "Scotland", "France"]
	data.commit	
end

data.transaction do 
	data["countries"] << "Italy"
	data.commit
end

p data