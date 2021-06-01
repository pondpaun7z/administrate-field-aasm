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

      def events
        resource.aasm.events
      end

      def id
        resource.id
      end
    end
  end
end
