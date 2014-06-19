require "zeroclipboard-rails/version"

module Zeroclipboard
  module Rails
    class Engine < ::Rails::Engine
      config.paths['app/assets'] << 'app/assets/flash'
    end
  end
end
