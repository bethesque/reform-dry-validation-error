require 'reform'
require "reform/form/dry"

class Widget
  attr_accessor :name

  def initialize(params = {})
    @name = params[:name]
  end
end

class WidgetForm < Reform::Form
  feature Reform::Form::Dry

  validation do
    required(:name).filled
  end

  property :name
end

params = { }
widget = Widget.new
form = WidgetForm.new(widget)
puts form.validate(params)
puts form.errors
