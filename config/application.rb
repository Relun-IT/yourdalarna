require_relative 'boot'
require 'rails/all'
Bundler.require(*Rails.groups)
module Yourdalarna
  class Application < Rails::Application

    config.paperclip_defaults = {
      storage: :s3,
      s3_protocol: ENV["S3_PROTOCOL"],
      s3_credentials: {
        bucket: ENV["S3_BUCKET_NAME"],
        access_key_id: ENV["AWS_ACCESS_KEY_ID"],
        secret_access_key: ENV["AWS_SECRET_ACCESS_KEY"],
        s3_region: ENV["S3_REGION"],
        s3_host_name: ENV["S3_HOST_NAME"]
      }
    }
  end
end
