module ImKayac

  class Error < StandardError
  end

  def self.to(name)
    Message.new.to(name)
  end

end
