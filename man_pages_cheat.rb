def contact_input
	puts "1: Command Line"
	puts "2: Search"
	puts "3: Exit"
	puts "****Make a selection****"
	
	menu_option = gets.strip
	if menu_option == "1" 
		puts ['1:cp', '2:mv', '3:cd', '4:mkdir']
		puts "****Make a selection****"
		command_input
	elsif menu_option == "2"
		puts "What do you want to search for?"
		search 
	elsif menu_option == "3"
		puts "Thanks for using this program"
		exit(0)
	else 
		contact_input
	end
end

def command_input
	option = gets.to_i
	case option
		when 1 
			man_pages('cp')
		when 2
			man_pages('mv')
		when 3
			man_pages('cd')
		when 4
			man_pages('mkdir')
	end
	contact_input
end


def man_pages(cmd)
	puts `man #{cmd}`
end


def search
	command = gets.strip
	puts `man #{command}`
end









 
# user_input = gets.strip

contact_input

