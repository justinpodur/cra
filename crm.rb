require_relative "contact"
require_relative "rolodex"

class CRM

	def initialize(name)
		self.name=name
	end

	def self.run(name)
		crm=CRM.new(name)
		crm.main_menu
	end
	
	attr_accessor :name

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
		puts "Enter First Name: "
		first_name=gets.chomp
		print "Enter Last Name: "
		last_name=gets.chomp
		print "Enter Email Address: "
		email=gets.chomp
		print "Enter note: "
		note=gets.chomp
		contact=Contact.new(first_name,last_name,email,note)
	end

	def modify_existing_contact
		
		def print_modify_menu
			puts "Enter attribute to modify:"
			puts "[1] ID"
			puts "[2] First Name"
			puts "[3] Last Name"
			puts "[4] Email Address"
			puts "[5] Note"
			puts "[6] exit"
		end

		print_modify_menu
		user_selected = gets.to_i

		def modify_option(user_selected)
			case user_selected
			when 1
				#modify ID
			when 2
				#modify First Name
			when 3
				#modify Last Name
			when 4
				#modify email address
			when 5
				#modify note
			when 6
				puts "goodbye"
				return
			else
				puts "Invalid option. Try again."
				print_modify_menu
			end
		end

		modify_option(user_selected)

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

# a_crm_app = CRM.new("Bitmaker Labs CRM")
# a_crm_app.main_menu
# puts "Welcome to #{a_crm_app.name}"

CRM.run("my CRM")