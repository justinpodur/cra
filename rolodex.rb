	
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

	def delete_contact(selected_id)
		contact_index = @contacts.index(find_contact(selected_id))
		#puts "#{@contacts[contact_index].first_name}"
		@contacts[contact_index].first_name = "deleted"
		@contacts[contact_index].last_name = "deleted"
		@contacts[contact_index].email = "deleted"
		@contacts[contact_index].note = "deleted"
		puts "Contact deleted. The ID remains, but the customer info is gone."
	end

	def find_contact(selected_id)
		@contacts.find {|contact| contact.id == selected_id}
	end

	def display_attribute(attribute,id)
		contact_index = @contacts.index(find_contact(id))
		if !contact_index
			puts "Contact not found"
		else
			case attribute
				when 1 then puts "#{@contacts[contact_index].first_name}"
				when 2 then puts "#{@contacts[contact_index].last_name}"
				when 3 then puts "#{@contacts[contact_index].email}"
				when 4 then puts "#{@contacts[contact_index].note}"
			end
		end
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