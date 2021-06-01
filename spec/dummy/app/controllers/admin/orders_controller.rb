module Admin
  class OrdersController < Admin::ApplicationController
    def transit_state
      if requested_resource.try("may_#{params[:event]}?".to_sym)
        requested_resource.try(params[:event].to_sym)
        requested_resource.save
        redirect_to admin_order_path(requested_resource), notice: "#{params[:event].humanize} successfully."
      else
        redirect_to admin_order_path(requested_resource), alert: "#{params[:event].humanize} fail."
      end
    end
  end
end
