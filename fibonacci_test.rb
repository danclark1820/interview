require_relative 'fibonacci.rb'

describe 'Fibonacci' do

  it 'returns the fibonacci of 0' do
    expect(fib(0)).to eq 0
  end

  it 'returns the fibonacci of 1' do
    expect(fib(1)).to eq 1
  end

  it 'returns the fibonacci of 2' do
    expect(fib(2)).to eq 1
  end

  it 'returns the fibonacci of 3' do
    expect (fib(3)).to eq 2
  end

  it 'returns the fibonacci of 6' do
    expect(fib(6)).to eq 8
  end

end
