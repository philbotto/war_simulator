require 'spec_helper'

describe WarSimulator do

  it 'should respond to "run"' do
    subject.should respond_to :run
  end

  it 'should return integer' do
    subject.run.should be_an Integer
  end

  it 'should be positive' do
    subject.run.should > 0
  end

end