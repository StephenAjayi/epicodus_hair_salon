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
      test_stylist = Stylist.new(:name => "Jesse", :id => nil)
      test_stylist.save()
      expect(test_stylist.id()).to(be_an_instance_of(Fixnum))
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
  
    describe('#update') do
     it('lets you update a stylist in the database') do
       stylist = Stylist.new({:name => "George", :id => nil})
       stylist.save()
       stylist.update({:name => "Brad"})
       expect(stylist.name()).to(eq("Brad"))
     end
   end
  describe("#clients") do
    it("returns an array of clients for a stylist") do
      test_stylist = Stylist.new({:name => "James", :id => nil})
      test_stylist.save()
      test_client = Client.new({:name => "Brooke", :stylist_id => test_stylist.id()})
      test_client.save()
      test_client2 = Client.new({:name => "Jake", :stylist_id => test_stylist.id()})
      test_client2.save()
      expect(test_stylist.clients()).to(eq([test_client, test_client2]))
    end
  end
  
end
    
  