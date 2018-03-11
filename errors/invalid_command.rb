class InvalidCommand < StandardError
  attr_reader :command, :errors

  def initialize(command, errors)
    @command = command
    @errors  = errors
  end
end