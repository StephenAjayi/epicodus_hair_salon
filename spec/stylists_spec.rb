require('spec_helper')

describe(Stylist) do 
  describe('#name') do
    it('returns the name of a stylist') do
      test_stylist = Stylist.new(:name=> "Jesse", :id => nil)
      expect(test_stylist.name()).to(eq("Jesse"))
    end
  end
  
  describe('#id') do
    it('returns the ID of stylist') do
      test_stylist = Stylist.new(:name => "Jesse", :id => 1)
      expect(test_stylist.id()).to(eq(1))
    end
  end
   
  describe('.all') do
    it('is empty at first') do
      expect(Stylist.all()).to(eq([]))
    end
  end
  
  describe('#save') do
    it('saves a stylist to list of stylists') do
      test_stylist = Stylist.new(:name => "Brad", :id => nil)
      test_stylist.save()
      expect(Stylist.all()).to(eq([test_stylist]))
    end
  end
  
   describe('#==') do
    it('ascribes equal to two objects are equal to each others') do
      test_stylist = Stylist.new({:name => "Brad", :id => nil})
      test_stylist2 = Stylist.new({:name => "Brad", :id => nil})
      expect(test_stylist).to(eq(test_stylist2))
     end
   end
  
  describe('.find') do
    it("returns a stylist by their id") do
      test_stylist = Stylist.new({:name => "Brad", :id => nil})
       test_stylist.save()
      test_stylist2 = Stylist.new({:name => "Jesse", :id => nil})
       test_stylist2.save()
       expect(Stylist.find(test_stylist2.id())).to(eq(test_stylist2))
     end
   end
end
    
  