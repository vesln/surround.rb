#--
# Surround.
#
# Veselin Todorov <hi@vesln.com>
# MIT License.
#++

require 'spec_helper'

class Dummy
  include Surround::Base
  attr_accessor :called
  attr_accessor :result

  def foo
    @called = true
  end

  def bar(foo)
    @result = foo
  end
end

describe 'Surround::Base' do
  before(:each) do
    @dummy = Dummy.new
  end

  after(:each) do
    Dummy.restore(:foo)
    Dummy.restore(:bar)
  end

  describe 'surround' do
    context 'before' do
      it 'should add and call before surrounder' do
        once = false
        twice = false
        Dummy.surround :foo, :before do
          once = true
        end
        Dummy.surround :foo, :before do
          twice = true
        end
        @dummy.foo
        once.should === true
        twice.should === true
        @dummy.called.should === true
      end
    end
    context 'after' do
      it 'should add and call after surrounder' do
        called = false
        Dummy.surround :foo, :after do
          called = true
        end
        @dummy.foo
        called.should === true
        @dummy.called.should === true
      end
    end

    it 'should pass arguments to blocks and to the original method' do
      result = nil
      Dummy.surround :bar, :before do |r|
        result = r
      end
      @dummy.bar('foo')
      result.should === 'foo'
      @dummy.result.should === 'foo'
    end
  end

  describe 'surrounded?' do
    it 'should the sorrund state for a method' do
      Dummy.surrounded?(:foo).should === false
      Dummy.surround :foo, :after do
      end
      Dummy.surrounded?(:foo).should === true
    end
  end

  describe 'restore' do
    it 'should restore surrounded method' do
      Dummy.surround :foo, :after do
      end
      Dummy.restore(:foo)
      Dummy.surrounded?(:foo).should === false
    end
  end
end
