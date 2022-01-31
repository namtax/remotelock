module Normalizers
  class Dollar
    def self.run(input)
      return unless input
      header, *rows = CSV.parse(input, {:col_sep => '$'})
      rows.map(&Row::Dollar.method(:new)).map(&:to_s)
    end
  end
end