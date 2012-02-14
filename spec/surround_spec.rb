require 'spec_helper'

describe Surround do
  it 'should have sane version' do
    Surround::VERSION.should match /\d\.\d.\d/
  end
end
