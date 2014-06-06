class CRM

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
	add_new_contact if user_selected == 1
	modify_existing_contact if user_selected == 2
	display_all_contacts if user_selected == 3
	display_contact if user_selected == 4
	display_attribute if user_selected == 5
	delete_contact if user_selected == 6
	exit_crm if user_selected == 7
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

def exit
end

end

a_crm_app = CRM.new
a_crm_app.main_menu