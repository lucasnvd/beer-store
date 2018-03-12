
module Beer::Operations
  class Create < Trailblazer::Operation
    extend Contract::DSL

    contract 'default', Beer::Schema
    step Contract::Validate(name: 'default')
  end
end
