#--
# Surround.
#
# Veselin Todorov <hi@vesln.com>
# MIT License.
#++

module Surround
  module Base
    def self.included(base)
      base.extend self
    end

    def surround(method, position, &block)
      surround_method(method, position, &block) unless surrounded?(method)
      register_surrounder(method, position, &block)
    end

    def surrounders(method)
      @__surround[method] if @__surround.has_key?(method)
    end

    def surrounded?(method)
      !@__surround.nil? && @__surround.has_key?(method)
    end

    def restore(method)
      return false unless (surrounded? method)
      @__surround.delete(method)
      alias_method method, "original_#{method}"
    end

    private

    def register_surrounder(method, position, &block)
      @__surround[method][position].push block
    end

    def surround_method(method, position, &block)
      @__surround = {} if @__surround.nil?
      @__surround[method] = {:before => [], :after => []}

      alias_method "original_#{method}", method unless self.respond_to?("original_#{method}")

      define_method method do |*args|
        surrounders = self.class.surrounders(method)
        surrounders[:before].each { |b| b.call(*args) }
        self.send("original_#{method}", *args)
        surrounders[:after].each { |b| b.call(*args) }
      end
    end
  end
end
