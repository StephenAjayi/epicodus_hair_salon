class Stylist 
  attr_reader(:name, :id)
  
  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:name)
    @id = attributes.fetch(:id)
  end
  
  define_singleton_method(:all) do 
    stylists = []
    returned_stylists = DB.exec("SELECT * FROM stylists;")
    returned_stylists. each do |stylist|
      id = stylist.fetch('id').to_i()
      name = stylist.fetch('name')
      stylists.push(Stylist.new(:name => name, :id => id))
    end
    stylists
  end
  
  define_method(:save) do 
    result = DB.exec("INSERT INTO stylists (name) VALUES ('#{@name}') RETURNING id;")
    @id = result.first().fetch('id').to_i()
  end
  
  define_method(:==) do |another_stylist|
    self.name().eql?(another_stylist.name()) && self.id().eql?(another_stylist.id())
  end
  
   define_singleton_method(:find) do |id|
    result = DB.exec("SELECT * FROM stylists WHERE id = #{id};")
    name = result.first().fetch("name")
    Stylist.new({:name => name, :id => id})
  end
  
   define_method(:update) do |attributes|
    @name = attributes.fetch(:name, @name)
    DB.exec("UPDATE stylists SET name = '#{@name}' WHERE id = #{self.id};")
   end
  
  define_method(:clients) do
    client_list = []
    clients = DB.exec("SELECT * FROM clients WHERE stylist_id = #{self.id()};")
    clients.each() do |client|
      name = client.fetch("name")
      stylist_id = client.fetch("stylist_id").to_i()
      client_list.push(Client.new({:name => name, :stylist_id => stylist_id}))
    end
  client_list
  end
end
  

    