require_relative 'errors/invalid_command'
require_relative 'lib/base_command'

require_relative 'commands/find_beer_command'

cmd = FindBeerCommand.new(beer_id: 150)

begin
  cmd.invoke { |beer_id:| puts "Beer id: #{beer_id}" }
rescue InvalidCommand => error

  puts "Command: #{error.command}"
  puts "Errors: \n"
  error.errors.each do |(field, msg)|
    puts "Field: '#{field}' | Message: '#{msg}'"
  end
end
