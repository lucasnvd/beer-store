require 'dry-validation'

class FindBeerCommand < BaseCommand
  self.contract = Dry::Validation.Schema do
    required(:beer_id).filled(:int?, gt?: 0)
  end
end
