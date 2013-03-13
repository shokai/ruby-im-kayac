im-kayac
========
rubygem for [im.kayac.com](http://im.kayac.com)

* http://github.com/shokai/ruby-im-kayac


Install
-------

    % gem install im-kayac


Registration
------------
please registrate on http://im.kayac.com


Usage
-----

```ruby
require 'im-kayac'
ImKayac.to('username').post('hello world')
```

password
```ruby
ImKayac.to('username').password('your-password').post('hello')
```

secret key
```ruby
ImKayac.to('username').secret('your-key').post('hello')
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
