require "administrate"
require "administrate/field/base"
require "rails"
require "aasm"

module Administrate
  module Field
    class Aasm < Base
      class Engine < ::Rails::Engine
      end

      def to_s
        data
      end

      def events(state = "default")
        resource.aasm(state.to_sym).events
      end

      def id
        resource.id
      end
    end
  end
end
