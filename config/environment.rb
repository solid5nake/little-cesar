# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

# Sets command_path of identify (ImageMagick)
Paperclip.options[:command_path] = '/opt/ImageMagick/bin' 
