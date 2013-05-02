module ImKayac

  class Message

    def initialize
      @to = nil
      @secret = nil
      @password = nil
      @handler = nil
    end

    def to(name)
      @to = name
      return self
    end

    def secret(str)
      @secret = str
      return self
    end

    def password(str)
      @password = str
      return self
    end

    def handler(handler)
      @handler = handler
      return self
    end

    def post(message)
      params = {:message => message}
      params[:sig] = Digest::SHA1.hexdigest "#{message}#{@secret}" if @secret
      params[:password] = @password if @password
      params[:handler] = @handler if @handler

      res = HTTParty.post "http://im.kayac.com/api/post/#{@to}", :body => params
      raise Error.new "response error (#{res.code})" unless res.code == 200
      data = JSON.parse res.body
      unless data['result'].to_s == 'posted' and res['error'].to_s == ''
        raise Error.new(data['error'] || 'unknown error')
      end
      data
    end

  end

end
