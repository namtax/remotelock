class PeopleController
  def initialize(params)
    @params = params
  end

  def normalize
    rows = Normalizer.run(params)
    Sort.run(rows, params[:order])
  end

  private

  attr_reader :params
end
