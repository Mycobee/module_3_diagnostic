class Food
  attr_reader :name,
              :ndbnum,
              :group,
              :datasrc,
              :manufacturer

  def initialize(attributes = {})
		@ndbnum = attributes[:ndbno]
		@name = attributes[:name]
		@group = attributes[:group]
		@datasrc = attributes[:ds]
		@manufacturer = attributes[:manu]
  end
end
