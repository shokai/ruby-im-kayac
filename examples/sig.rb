require 'rubygems'
require 'im-kayac'
require 'digest/sha1'

message = 'hello world'
sig = Digest::SHA1.hexdigest(message + 'your-sig')

begin
  p ImKayac.post("shokai", message, {:sig => sig})
rescue => e
  STDERR.puts e
end
