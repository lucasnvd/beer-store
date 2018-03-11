class BaseCommand
  class << self
    attr_accessor :contract
  end

  def initialize(attributes = {})
    @attributes = attributes
  end

  def [](attribute)
    @attributes.dig(attribute)
  end

  def invoke(&block)
    validate!
    block.call(@attributes) if block_given?
  end

  def validate!
    result = self.class.contract.call(@attributes)
    raise InvalidCommand.new(self.class, result.errors) if result.failure?
  end
end