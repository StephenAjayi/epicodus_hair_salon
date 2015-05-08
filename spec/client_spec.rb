require('spec_helper')

describe(Client) do
  describe('#name') do
    it('returns the name of a client') do
      test_client = Client.new({:name => "Beth"})
      expect(test_client.name).to(eq("Beth"))
    end
  end
  describe('.all') do
    it('returns an array of clients, is empty at first') do
      expect(Stylist.all()).to(eq([]))
    end
  end
  describe("#save") do
    it("adds a client to the array of saved clientss") do
      test_client = Client.new({:name => "Beth"})
      test_client.save()
      expect(Client.all()).to(eq([test_client]))
    end
  end
  describe('#==') do
    it('ascribes equal to two objects are equal to each others') do
      test_client = Client.new({:name => "Brad"})
      test_client2 = Client.new({:name => "Brad"})
      expect(test_client).to(eq(test_client2))
    end
  end




end


