	class Contact
		def initialize(first_name,last_name,email,note)
			@first_name=first_name
			@last_name=last_name
			@email=email
			@note=note
		end

		attr_accessor :first_name,:last_name,:email,:note

	end