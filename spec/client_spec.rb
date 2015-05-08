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
end