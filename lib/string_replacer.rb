require 'csv'
require 'erb'

class Hash

  def get_binding
    binding
  end

  def self.define_key(key)
    define_method("#{key}") do
      values_at(key)[0]
    end
  end

end

class StringReplacer
  include Enumerable

  def initialize(template, values)
    template
    @values = values

    values[0].keys.each do |key|
      Hash.define_key key
    end

    @renderer = ERB.new template
  end

  def each
    @values.each do |h|
      yield @renderer.result(h.get_binding)
    end
  end

end

