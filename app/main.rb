require_relative 'models/legislator.rb'
require_relative 'models/representative.rb'
require_relative 'models/senator.rb'

# Question 1
def legislators_state(string)
	senators = Sen.state(string)
		print "Senators:"
	sens = Sen.where(state: state).order(lastname: lastname)
	sens.each do |sen|
		puts " #{sen[:firstname]} #{sen[:lastname]} #{sen[:party]}"
	end

	representatives = Rep.state(string)
		print "Representatives:"
	reps = Rep.where(state: state).order(lastname: lastname)
	reps.each do |rep|
		puts " #{rep[:firstname]} #{rep[:lastname]} #{rep[:party]}"
	end
end

# Question 2
def legislators_gender(string)
	senators = Sen.gender(string).count
	percentage = (senators.to_f/Sen.all.count * 100).round(0)

	case string
	when "M"
		puts "Male Senators: #{senators} (#{percentage}%)"
	when "F"
		puts "Female Senators: #{senators} (#{percentage}%)"
	else
		puts "Enter gender."
	end

	representatives = Rep.gender(string).count
	percentage = (representatives.to_f/Rep.all.count * 100).round(0)

	case string
	when "M"
		puts "Male Representatives: #{representatives} (#{percentage}%)"
	when "F"
		puts "Female Representatives: #{representatives} (#{percentage}%)"
	else
		puts "Enter gender."
	end
end


# Question 3
def active_in_states
	states = []
	Legislator.all.group(:state).each do |group|
		states << group.state
	end
	state_hash = []

	states.each do |state|
		hash = {}
		sen_count = Sen.state(state).count
		rep_count = Rep.state(state).count
		hash[:state] = state
		hash[:senators] = sen_count
		hash[:representatives] = rep_count
		hash[:total] = sen_count + rep_count
		state_hash << hash
	end

	sorted_states = state_hash.sort_by {|s| -s[:total]}

	sorted_states.each do |states|
		if states[:senators] != 0 && states[:representatives] != 0
			puts "#{states[:states]}: #{states[:senators]} Senators, #{states[:reps]} Representative(s)"
		end
	end
end

# Question 4
def count_all
	puts "Senators: #{Sen.all.count}"
	puts "Representatives: #{Rep.all.count}"
end

# Question 5
def delete_not_in_office
	not_in_office = Legislator.where(in_office: "0")
	not_in_office.delete.all
end



=begin
legislators_state("CA")
legislators_gender("M")
active_in_states
count_all
delete_not_in_office
=end