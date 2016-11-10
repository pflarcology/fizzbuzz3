require 'fizzfinal.rb'

describe "fizzfinal" do

  context "divisiblity" do
    it "should test if a number is divisible by 3" do
      expect(is_divisible_by_3?(3)).to eq true
    end

  end

  it "should test if a number is not divisible by 3" do
    expect(is_divisible_by_3?(4)).to eq false
  end

  it "should test if a number is divisible by 5" do
    expect(is_divisible_by_5?(5)).to eq true
  end

  it "shoud test if a number is not divisible by 5" do
    expect(is_divisible_by_5?(6)).to eq false
  end

  it "should test if a number is divisible by 15" do
    expect(is_divisible_by_15?(15)).to eq true
  end

  it "should test if a number is not divisible by 15" do
    expect(is_divisible_by_15?(16)).to eq false
  end

  it "should test for arbitrary divisibility" do
    expect(is_divisible_by?(3, 3)).to eq true
    expect(is_divisible_by?(5, 5)).to eq true
    expect(is_divisible_by?(15, 15)).to eq true
  end

  it "should for arbitrary indivisibility" do
    expect(is_divisible_by?(1, 3)).to eq false
    expect(is_divisible_by?(1, 5)).to eq false
    expect(is_divisible_by?(1, 15)).to eq false
  end

  it 'should output for "fizz" for multiples of 3' do
    expect(fizzfinal(3)).to eq "fizz"
  end

  it 'should output "buzz" for multiples of 5' do
    expect(fizzfinal(5)).to eq "buzz"
  end

  it 'should output "fizzbuzz" for multiple of 15' do
    expect(fizzfinal(15)).to eq "fizzbuzz"
  end

  it 'should return a number if not divisible by 3 or 5' do
    expect(fizzfinal(4)).to eq 4
  end

  it 'should return 0 for fizzbuzz(0)' do
    expect(fizzfinal(0)).to eq 0
  end



end
