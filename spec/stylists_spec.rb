require('spec_helper')

describe(Stylist) do 
  describe('#name') do
    it('returns the name of a stylist') do
      test_stylist = Stylist.new(:name=> "Jesse", :id => nil)
      expect(test_stylist.name()).to(eq("Jesse"))
    end
  end
end
    
  