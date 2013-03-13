require 'rubygems'
$:.unshift File.expand_path '../lib', File.dirname(__FILE__)
require 'im-kayac'

begin
  res = ImKayac.post "username", "hello world"
  p res
rescue => e
  STDERR.puts e
end
