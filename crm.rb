require_relative "contact"
require_relative "rolodex"

class CRM

	attr_accessor :name, :confirmed

	def initialize(name)
		self.name = name
		@rolodex = Rolodex.new
	end

	def self.run(name)
		crm = CRM.new(name)
		crm.main_menu
	end

	def print_main_menu
		puts "[1] Add new contact"
		puts "[2] Modify an existing contact"
		puts "[3] Display all contacts"
		puts "[4] Display a contact"
		puts "[5] Display an attribute of a contact"
		puts "[6] Delete a contact"
		puts "[7] Exit"
		puts "Enter a number: "
	end

	def main_menu
		while true
			print_main_menu
			user_selected = gets.to_i
			if user_selected >=7 
				break
			end
			call_option(user_selected)
		end
	end

	def call_option(user_selected)
		case user_selected
			when 1
				add_new_contact
			when 2
				modify_existing_contact
			when 3
				display_all_contacts
			when 4
				display_contact
			when 5
				display_attribute
			when 6
				delete_contact
			when 7
				puts "Goodbye"
				return
			else
				puts "Invalid option. Please try again."
				main_menu
		end
	end

	def confirm

		puts "Are you sure? Type 1 if so, 0 if not:"
		
		confirmation=gets.to_i
		
		case confirmation
			when 1
				return true
			when 0
				return false
			# else
			# 	puts "Please type 1 if so, 0 if not."
		end
	end


	def add_new_contact
		puts "Enter First Name: "
		first_name=gets.chomp
		print "Enter Last Name: "
		last_name=gets.chomp
		print "Enter Email Address: "
		email=gets.chomp
		print "Enter note: "
		note=gets.chomp
		contact=Contact.new(first_name,last_name,email,note)
		@rolodex.add_contact(contact)
	end

#Making my life easier by taking this out
	# def print_modify_menu
	# 	puts "Enter attribute to modify:"
	# 	puts "[1] ID"
	# 	puts "[2] First Name"
	# 	puts "[3] Last Name"
	# 	puts "[4] Email Address"
	# 	puts "[5] Note"
	# 	puts "[6] exit"
	# end

	def modify_option
		
		puts "What is the ID of the user you seek?"
		
		selected_id = gets.to_i
		
		puts @rolodex.find_contact(selected_id)

		puts "What is the new first name?"
		first_name = gets.chomp
		
		puts "What's the new last name?"
		last_name = gets.chomp
		
		puts "What's the new email?"
		email = gets.chomp
		
		puts "What's the new note?"
		note = gets.chomp

		modified_contact = Contact.new(first_name,last_name,email,note)

		@rolodex.edit_contact(selected_id,modified_contact)


#Similarly making life easier by removing this for now. 
		# case user_selected
		# 	when 1
		# 		#modify ID
		# 	when 2
		# 		#modify First Name
		# 	when 3
		# 		#modify Last Name
		# 	when 4
		# 		#modify email address
		# 	when 5
		# 		#modify note
		# 	when 6
		# 		puts "goodbye"
		# 		return
		# 	else
		# 		puts "Invalid option. Try again."
		# 		print_modify_menu
		# end

	end

	def modify_existing_contact
	
		# print_modify_menu
		# user_selected = gets.to_i
		
		if confirm
			puts "here we go with modification"
			modify_option
		else
			puts "Going back to main menu"
			main_menu
		end

	end

	def display_all_contacts
		@rolodex.return_contact.each {|c| puts "You know this person: #{c.first_name} #{c.last_name} with email #{c.email}, who you are supposed to #{c.note}?" }
	end

	def display_contact
		puts "What is the ID of the user you seek?"
		selected_id = gets.to_i
		contact=@rolodex.find_contact(selected_id)
		puts "Your contact is #{contact.first_name} #{contact.last_name} whose email is #{contact.email} and remember to #{contact.note}"
	end

	def display_attribute
	end

	def delete_contact
	end

end

# a_crm_app = CRM.new("Bitmaker Labs CRM")
# a_crm_app.main_menu
# puts "Welcome to #{a_crm_app.name}"

CRM.run("my CRM")
