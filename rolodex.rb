	
class Rolodex
		
	def initialize
		@contacts = []
		@id = 1000
	end
		
	attr_reader :contacts

	def add_contact(contact)
		contact.id=@id
		@contacts << contact
		@id +=1
	end

	def return_contact
		return @contacts
	end

	def find_contact(selected_id)
		@contacts.find {|contact| contact.id == selected_id}
	end

	def edit_contact(id, new_contact)
		contact_index = @contacts.index(find_contact(id))
		if contact_index==nil
			puts "you have no contacts yet"
		else
			@contacts[contact_index]=new_contact
		end
	end

end