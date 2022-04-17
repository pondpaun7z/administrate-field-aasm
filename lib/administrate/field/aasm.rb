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
        if to_s.class.to_s == "String"
          resource.aasm.events
        else
          resource.aasm(state).events
        end
      end

      def id
        resource.id
      end
    end
  end
end
