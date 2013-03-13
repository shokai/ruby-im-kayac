$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

require 'rubygems'
require 'httparty'
require 'json'
require 'digest/sha1'
require 'im-kayac/version'
require 'im-kayac/message'
require 'im-kayac/main'

module ImKayac
end
