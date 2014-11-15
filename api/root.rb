module API
  class Root < Grape::API
    version 'v1'
    format :json
    prefix :api

    get '/status' do
      {
        version:  'v1',
        status:   'Running',
        app_name: 'Grape-Skeleton API'
      }
    end
  end
end
