require_relative '../../db/config'

class Legislator < ActiveRecord::Base

	attr_reader :firstname, :middlename, :lastname, :phone, :fax, :website, :webform, :party, :gender, :birthdate, :twitter_id, :in_office

	def self.state(state)
		legislator = Legislator.where(state: state)
	end

	def self.title(title)
		legislator = Legislator.where(title: title)
	end

	# def self.name
	# 	"#{self.firstname} #{self.middlename} #{self.lastname}"
	# end

	def self.firstname(firstname)
		legislator = Legislator.find_by(firstname: firstname)
	end

	def self.party(party)
		Legislator.where(party: party)
	end

	def self.gender(gender)
		Legislator.where(gender: gender)
	end
end


# def congressmembers_by_gender(string)
#   senators = Sen.gender(string).count
#   percentage = (senators.to_f/Sen.all.count * 100).round(0)

#     case string
#       when "M"
#       puts "Male Senators: #{senators} (#{percentage}%)"
#       when "F"
#       puts "Female Senators: #{senators} (#{percentage}%)"
#       else
#       puts "Choose a gender."
#     end
# end





