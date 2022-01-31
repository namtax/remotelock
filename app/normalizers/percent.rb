module Normalizers
  class Percent
    def self.run(input) 
      return unless input
      header, *rows = CSV.parse(input, {:col_sep => '%'})
      rows.map(&Row::Percent.method(:new)).map(&:to_s)
    end
  end
end