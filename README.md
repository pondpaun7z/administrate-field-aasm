# Administrate::Field::Aasm
Custom Administrate Field for AASM gem.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'administrate-field-aasm'
```

And then execute:
```bash
$ bundle
```

Add to your dashboard:
```ruby
ATTRIBUTE_TYPES = [
  state: Field::Aasm
]

SHOW_PAGE_ATTRIBUTES = %i[
  ...
  state
  ...
]
```

Add to your `routes.rb`
```ruby
resources :orders do
  member do
    put '/:event', to: 'orders#transit_state'
  end
end
```

Add to your controller
```ruby
def transit_state
  if requested_resource.try("may_#{params[:event]}?".to_sym)
    requested_resource.try(params[:event].to_sym)
    requested_resource.save
    redirect_to admin_order_path(requested_resource), notice: "#{params[:event].humanize} successfully."
  else
    redirect_to admin_order_path(requested_resource), alert: "#{params[:event].humanize} fail."
  end
end
```

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
