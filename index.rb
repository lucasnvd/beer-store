require 'dry/validation'
require 'trailblazer/loader'
require 'trailblazer'
require 'reform'

Trailblazer::Loader.new.(concepts_root: './concepts/') do |file|
  require_relative(file)
end
