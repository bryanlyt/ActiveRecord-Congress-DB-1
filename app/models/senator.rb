require_relative '../models/legislators.rb'

class Sen < Legislator
    self.inheritance_column = :title

end