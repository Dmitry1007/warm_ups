class Allergy
  attr_reader :allergy_values

  def initialize
    @allergy_values = {
      cats: 128,
      pollen: 64,
      chocalate: 32,
      tomatoes: 16,
      strawberries: 8,
      shellfish: 4,
      peanuts: 2,
      eggs: 1
    }
  end

  def score(integer)
    allergies = []
    @allergy_values.each do |k, v|
      if integer >= v
        allergies << k.to_s
        integer -= v
      end
    end
    allergies
  end
end
