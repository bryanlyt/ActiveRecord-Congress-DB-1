require_relative 'models/legislator.rb'

# Question 1
def congressmembers_state(string)
	senators = Sen.state(string)

print "Enter state?"
state = gets.chomp.upcase

print "Senators:"
sens = Sen.where(state: state).order(lastname: lastname)
sens.each do |sen|
	puts " #{sen.name} (#{sen.party}"
end
print "Representatives:"
reps = Rep.where(state: state).order(lastname: lastname)
reps.each do |rep|
	puts " #{rep.name} (#{rep.party}"
end


# Question 2

def congressmembers_gender(string)
	senators = Sen.gender(string).count
	percentage = (senators.to_f/Sen.all.count)











# print "Enter gender?"
# gender = gets.chomp

# print "Male Senators: "




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


end