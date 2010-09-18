require 'rubygems'
require 'im-kayac'

begin
  p ImKayac.post("username", "hello world", {:password => 'your-password'})
rescue => e
  STDERR.puts e
end
