im-kayac
========
post message http://im.kayac.com

* http://github.com/shokai/ruby-im-kayac



Install
-------

    % gem install im-kayac


Registration
------------
please registrate on http://im.kayac.com/


Usage
-----

```ruby
require 'rubygems'
require 'im-kayac'

begin
  p ImKayac.post("username", "hello world")
rescue => e
  STDERR.puts e
end
```


Sample
------
https://github.com/shokai/ruby-im-kayac/tree/master/sample


Contributing
------------

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
