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

      def events(state = :default)
        resource.aasm(state).events
      end

      def id
        resource.id
      end
    end
  end
end
