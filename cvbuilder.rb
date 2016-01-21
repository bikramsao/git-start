class Resume
	attr_accessor :name,:phone_no,:email,:skill,:about_me
	class << self
		def build
			resumeobject = new
			resumeobject.inputname()
			resumeobject.inputphone()
			resumeobject.inputemail()
			resumeobject.inputskill()
			resumeobject.inputaboutme()
			resumeobject.savetofile()
		end
	end	

	def inputname
		puts "Enter name :"
		self.name = gets
		self.name.strip!
	
		if name.match(/^[a-z, .'-]+$/i)
			puts"valid name"
		else
			puts"Invalid name"
			inputname()	
		end
	end

	def inputphone
		puts "Enter phone number :"
		self.phone_no = gets
		if phone_no.match(/^(\+\d{1,3}[- ]?)?\d{10}$/)
			puts"valid mobile number"
		else
			puts"Invalid mobile number"
			inputphone()
		end	
	end
	
	def inputemail
		puts "Enter e-mail :"
		self.email = gets
		if email.match(/[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}/)
			puts"valid E-mail"
		else
			puts"Invalid e-mail"
			inputemail()
		end
	end

	def inputskill
		puts "Skills :"
		self.skill = gets
	end

	def inputaboutme	
		puts "About me :"
		self.about_me = gets
	end

	def savetofile
		aFile = File.new("#{name}#{email}.txt", "w")
		data="Resume \n------------------------------------------------------------\nName: #{name}\n"+
		"E-mail: #{email}\nphone no: #{phone_no}------------------------------------------------------------\n"+
		"About me: #{about_me}\nSkills: #{skill}"
		aFile.syswrite("#{data}")
	end

end	
Resume.build	
