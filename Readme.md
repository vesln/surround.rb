# Surround.rb

Surround.rb port of my surround module for Node.js. The gem provides an easy way to surround a method with before and after functionality.

## Synopsis

```ruby

class SuperHero
  include Surround::Base

  surround :magic, :after do |param|
    # More magic
  end
 
  def magic(param)
    # Do magic here.
  end
end

SuperHero.surround :magic, :before do |param|
  # Win!
end

SuperHero.restore(:magic) # Clears added surrounders
SuperHero.surrounded?(:magic) # Is it surrounded?

```

## Install

Gemfile:

```ruby
gem 'surround'
```

or 

```
gem install surround
````

## License

MIT License

Copyright (C) 2012 Veselin Todorov

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
of the Software, and to permit persons to whom the Software is furnished to do
so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
