require 'rubygems'
$:.unshift File.expand_path '../lib', File.dirname(__FILE__)
require 'im-kayac'

begin
  p ImKayac.to('username').password('your-password').post('hello world')
rescue => e
  STDERR.puts e
end
