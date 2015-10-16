class Legislator < ActiveRecord::Base

	def state(state)
		legilator = Legislator.where (state: state)
	end

end

legislator.state("NY")
# legislator = Legislator.where (firstname: "Jeff")