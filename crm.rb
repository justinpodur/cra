class CRM

	def initialize(name)
		@name=name
	end

	attr_reader :name

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
		print_main_menu
		user_selected = gets.to_i
		call_option(user_selected)
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

	def add_new_contact
		puts "adding new contact"
	end

	def modify_existing_contact
		puts "modifying"
	end

	def display_all_contacts
	end

	def display_contact
	end

	def display_attribute
	end

	def delete_contact
	end

end

a_crm_app = CRM.new("Bitmaker Labs CRM")
a_crm_app.main_menu
puts "Welcome to #{a_crm_app.name}"