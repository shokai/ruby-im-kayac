$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

require 'rubygems'
require 'uri'
require 'net/http'
require 'json'

module ImKayac

  VERSION = '0.0.5'

  def ImKayac.post(user, message, opts = {})
    uri = URI.parse("http://im.kayac.com/api/post/#{user}")
    params = {:message => URI.encode(message)}
    opts = {} unless opts

    # http://im.kayac.com/#docs
    # keys of "opts" are [:handler, :password, :sig]
    opts.each{|k,v|
      params[k] = v
    }
    query = params.map{|k,v| "#{k}=#{v}"}.join('&')
    message.gsub!(/&/, '_')
    res = nil
    Net::HTTP.start(uri.host, uri.port){|http|
      http_res = http.post(uri.path, query)
      res = JSON.parse(http_res.body)
    }
    unless res['result'].to_s == 'posted' and res['error'].to_s == ''
      error = res['error'].to_s
      if error.size > 0
        raise Error.new(error)
      else
        raise Error.new('unknown error')
      end
    end
    return res
  end

  class Error < StandardError
  end

end
