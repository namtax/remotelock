class Normalizer 
  def self.run(input)
    [
      Normalizers::Dollar.run(input[:dollar_format]), 
      Normalizers::Percent.run(input[:percent_format]), 
    ]
    .flatten
    .compact
  end
end