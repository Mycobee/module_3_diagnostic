class Food
  attr_reader :name,
              :ndbnum,
              :group,
              :datasrc,
              :manufacturer

  def initialize(attributes = {})
		@ndbnum = attributes[:ndbnum]
		@name = attributes[:name]
		@group = attributes[:group]
		@datasrc = attributes[:datasrc]
		@manufacturer = attributes[:manufacturer]
  end
end
