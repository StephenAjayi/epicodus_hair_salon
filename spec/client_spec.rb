require('spec_helper')

describe(Client) do
  describe('#name') do
    it('returns the name of a client') do
      test_client = Client.new({:name => "Beth", :stylist_id => 1})
      expect(test_client.name).to(eq("Beth"))
    end
  end
  describe('.all') do
    it('returns an array of clients, is empty at first') do
      expect(Stylist.all()).to(eq([]))
    end
  end
  describe("#save") do
    it("adds a client to the array of saved clients") do
      test_client = Client.new({:name => "Beth", :stylist_id => 1})
      test_client.save()
      expect(Client.all()).to(eq([test_client]))
    end
  end
  describe('#==') do
    it('ascribes equal to two objects are equal to each others') do
      test_client = Client.new({:name => "Brad", :stylist_id => 1})
      test_client2 = Client.new({:name => "Brad", :stylist_id => 1})
      expect(test_client).to(eq(test_client2))
    end
  end
  
  describe("#stylist_id") do
    it("returns the stylist id ") do
      test_client = Client.new({:name => "learn SQL", :stylist_id => 1})
      expect(test_client.stylist_id()).to(eq(1))
    end
  end




end


