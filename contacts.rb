#!/usr/bin/env ruby

require 'pstore'
data = PStore.new("contacts.pstore")

data.transaction do
data["contacts"] ||= []

data.commit
end

run = true
while(run) do
	print "1. Add a new contact\n 2. Retrieve a contact's birthday \n 3. List all contacts \n 4. Exit\n " 
	input = gets.chomp

	if input === "4"
		run = false
	end 

	if input == "1"
		print "Enter contact name\n"
		name = gets.chomp
		print "Enter date of birth\n"
		dob = gets.chomp

		person = {name => dob}

		data.transaction do
			data["contacts"] << person
			data.commit
		end
		print "#{name} has been added\n"
	end

	if input == "2"
		print "Enter contact name"
		name = gets.chomp
		if contacts.has_key?("name")
			puts data
		end
	end

end