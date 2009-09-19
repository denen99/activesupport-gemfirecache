= activesupport-gemfirecache

== DESCRIPTION:

ActiveSupport-gemfirecache is a jRuby on Rails extension that enables a GemFire backend store for Rails.cache

== FEATURES/PROBLEMS:


== REQUIREMENTS:

* ActiveSupport 2.3.2 
* GemFire 6 or later 

== INSTALL:

* sudo gem install activesupport-gemfirecache 
* cp gemfire.jar into lib directory (i.e., lib/ if using Rails)
* need a copy of gemfireLicense.zip in root directory (root of Rails app if using Rails)


== CONFIGURATION:

In your config/environment.rb, add the following:
  
  if defined?(JRUBY_VERSION)
    config.gem "activesupport-gemfirecache", :lib => 'gemfire_cache_store'
    config.cache_store = :gemfire_cache_store
  end

== LICENSE:

(The MIT License)

Copyright (c) 2009  Adam Denenberg

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
