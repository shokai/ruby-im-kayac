require 'rubygems'
require 'im-kayac'

begin
  p ImKayac.post("username", "hello world")
rescue => e
  STDERR.puts e
end
