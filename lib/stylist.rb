class Stylist 
  attr_reader(:name, :id)
  
  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:name)
  end
end
   
    