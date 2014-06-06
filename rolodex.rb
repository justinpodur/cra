	class Rolodex
		def initialize
			@contacts = []
			@id = 1000
		end
		
		attr_reader :contacts

		def add_contact(contact)
			contact.id=@id
			@contacts << contact
		end
	end