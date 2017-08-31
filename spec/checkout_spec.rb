require './lib/checkout.rb'

describe Checkout do
  it 'should have a collection of products' do
    expect(subject.products).to be_an_instance_of(Array)
  end

  it 'should have an empty basket on init' do
    expect(subject.basket).to match_array([])
  end

  it 'should be able to add stuff to basket and get total cost' do
    subject.shop(0)
    expect(subject.basket).to match_array([{:item=>{:name=>"Lavender heart", :price=>9.25, :code=>0}}])
    expect{subject.shop(0)}.to output("You have added Lavender heart (price: 9.25).\nTotal cost is 9.25.\n").to_stdout
  end

end
