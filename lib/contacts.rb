require 'pry'

  # This is the array we will be passing into the remove_strawberry method
  contacts = {
    "Jon Snow" => {
      name: "Jon",
      email: "jon_snow@thewall.we",
      favorite_ice_cream_flavors: ["chocolate", "vanilla"]
    },
    "Freddy Mercury" => {
      name: "Freddy",
      email: "freddy@mercury.com",
      favorite_ice_cream_flavors: ["strawberry", "cookie dough", "mint chip"]
    }
  }

def remove_strawberry(contacts)
  contacts.each do |name, data|
    data.each do |attribute, details|
      if attribute == :favorite_ice_cream_flavors
        details.delete_if {|ice_cream| ice_cream == "strawberry"}
      end
    end
  end
end

remove_strawberry(contacts)
