require_relative '../models/legislators.rb'

class Rep < Legislator
    self.inheritance_column = :title

end