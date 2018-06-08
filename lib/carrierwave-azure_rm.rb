require 'carrierwave'
require 'carrierwave/azure_rm/version'
require 'carrierwave/storage/azure_rm'

class CarrierWave::Uploader::Base
  add_config :azure_storage_account_name
  add_config :azure_storage_access_key
  add_config :azure_storage_blob_host
  add_config :azure_container
  add_config :public_access_level
  add_config :auto_sign_urls
  add_config :token_expire_after
  add_config :retry_count
  add_config :retry_interval

  configure do |config|
    config.public_access_level = 'blob'
    config.token_expire_after = 1800
    config.retry_count = 3
    config.retry_interval = 30
    config.storage_engines[:azure_rm] = 'CarrierWave::Storage::AzureRM'
  end
end
