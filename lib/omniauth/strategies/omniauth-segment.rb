require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    # Segment Omniauth Strategy
    class Segment < OmniAuth::Strategies::OAuth2
      option :name, 'segment'

      option :client_options, \
             site: 'https://id.segmentapis.com',
             authorize_url: 'https://id.segmentapis.com/oauth2/auth',
             token_url: 'https://id.segmentapis.com/oauth2/token'
             
      def scope
        options[:scope]
      end
      
      def build_access_token
        options.token_params.merge!(:headers => {'Authorization' => basic_auth_header })
        super
      end

      def basic_auth_header
        "Basic " + Base64.strict_encode64("#{options[:client_id]}:#{options[:client_secret]}")
      end

      def callback_url
        return options[:redirect_uri] unless options[:redirect_uri].nil?
        full_host + script_name + callback_path
      end
    end
  end
end
