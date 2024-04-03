# frozen_string_literal: true

class Hello
  def call(name = nil)
    padded_name = name.nil? ? '' : ", #{name}"
    "Hello#{padded_name}!"
  end
end
