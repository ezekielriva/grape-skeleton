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
