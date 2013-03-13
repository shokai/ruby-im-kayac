$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

require 'rubygems'
require 'uri'
require 'net/http'
require 'json'
require 'im-kayac/version'
require 'im-kayac/main'

module ImKayac
end
