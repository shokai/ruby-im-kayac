require 'rubygems'
$:.unshift File.expand_path '../lib', File.dirname(__FILE__)
require 'im-kayac'

begin
  p ImKayac.post("username", "hello world")
rescue => e
  STDERR.puts e
end
