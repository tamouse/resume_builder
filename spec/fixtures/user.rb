


contact = Contact.new(first_name: "Tamara", last_name: "Temple")
contact.addresses.new(street1: "1585 Dodd Road #202",
                      city: "Mendota Hts",
                      state: "MN",
                      postal_code: "55118",
                      primary: true)
contact.phones.new(number: "612-518-9815", label: "mobile")
contact.phones.new(number: "415-503-9241", label: "gvoice", primary: true)
contact.emails.new(address: "tamouse@gmail.com", label: "personal")
contact.emails.new(address: "tamara@tamaratemple.com", label: "work", primary: true)
contact.instants.new(handle: "tamouse", label: "skype")
contact.instants.new(handle: "tamouse@gmail.com", label: "gtalk", primary: true)
contact.instants.new(handle: "tamaratemple", label: "yahoo")
contact.websites.new(url: "http://about.me/tamouse", label: "about me", primary: true)
contact.websites.new(url: "http://tamouse.github.io/", label: "blog")
contact.save
