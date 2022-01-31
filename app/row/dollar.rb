module Row
  class Dollar
    def initialize(input)
      @input = input.map(&:strip)
    end

    def to_s
      "#{last_name}, #{city}, #{birth_date}"
    end

    def last_name
      @input[3]
    end

    def city 
      City::CODES.fetch(@input[0].downcase, @input[0])
    end

    def birth_date
      d,m,y = @input[1].split(/-/).map{ |d| d.to_i.to_s }
      [m,d,y].join('/')
    end
  end
end