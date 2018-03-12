# frozen_string_literal: true

module Beer
  Schema = Dry::Validation.Schema do
    required(:alcohol).filled(:float?, gt?: 0.0)
    required(:color).filled
    required(:name).filled
  end
end
