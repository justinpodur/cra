	
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

		def confirm
			puts "Are you sure? Type yes if so, no if not:"
			confirmation=gets.to_s
			case confirmation
			when "yes"
				#proceed with modification
			when "no"
				#go back to the main menu
				#will crm.main_menu work?
			else
				puts "Please type yes if so, no if not."
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
end