Grape Skeleton
==============

Ruby version: `2.1.5`

Dependencies
============

+ Grape: api feature
+ Minitest: testing suit
+ Unicorn: server

Run Server
==========

Execute the next command `bundle exec unicorn`

Testing
=======

This app use `minitest` to do that.

## How to write a new test?

1. First create a file over spec folder using `_spec.rb` as sufix
2. Use `rspec` notation to write the test. Check the example below:

```spec
require 'spec_helper'

describe API::Root do
  include Rack::Test::Methods

  def app
    API::Root
  end

  describe "GET /status" do
    let(:json) { JSON.parse(last_response.body) }

    it "should return basic api info" do
      get 'api/v1/status'

      assert_equal last_response.status, 200
      assert_equal json['version'], 'v1'
      assert_equal json['status'], 'Running'
    end
  end
end

```

**Notes**: you must not forget add `include Rack::Test::Methods` line inside
your first `describe` if you plan make API calls because it enables methods such
as `get|post|put|delete`.

Now we're using `assert` notation. In a future we can change it by `expectation`

## How to run tests?

Execute the next command `bundle exec rake test`
