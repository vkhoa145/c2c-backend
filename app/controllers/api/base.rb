require 'grape-swagger'

module Api
    class Base < Grape::API
        prefix 'api'
        version 'v1', using: :path
        format :json
        mount Api::V1::Base

        add_swagger_documentation
    end
end