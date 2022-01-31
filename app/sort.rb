class Sort 
  COLUMNS = [:first_name, :city, :birthdate]

  def self.run(input, order)
    return input unless order
    input.sort_by do |r|
      r.split(',')[COLUMNS.index(order)]
    end 
  end
end 