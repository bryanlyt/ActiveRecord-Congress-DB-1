require_relative '../../db/config'

class Legislator < ActiveRecord::Base

	attr_reader :firstname, :middlename, :lastname, :phone, :fax, :website, :webform, :party, :gender, :birthdate, :twitter_id, :in_office

	def self.state(state)
		self.where(state: state)
	end

	def self.title(title)
		self.where(title: title)
	end

	def self.party(party)
		self.where(party: party)
	end

	def self.gender(gender)
		self.where(gender: gender)
	end

end

