require 'rubygems'
$:.unshift File.expand_path '../lib', File.dirname(__FILE__)
require 'im-kayac'
require 'digest/sha1'

message = 'hello world'
sig = Digest::SHA1.hexdigest(message + 'your-sig')

begin
  p ImKayac.post("username", message, {:sig => sig})
rescue => e
  STDERR.puts e
end
