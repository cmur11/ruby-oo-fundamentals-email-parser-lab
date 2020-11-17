# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').


#You will be writing an `EmailAddressParser` class that gets initialized with a string
#of emails.

#Your job is to parse those email addresses into a useful array using an instance
#method, `parse`.

#I should be able to do this:

#```ruby
#email_addresses = "john@doe.com, person@somewhere.org"
#parser = EmailAddressParser.new(email_addresses)

#parser.parse
# => ["john@doe.com", "person@somewhere.org"]
#```

#You should be able to initialize with a list of email addresses either separated
#with spaces _or_ separated with commas. The `parse` method should, additionally,
#only return unique addresses.

## Instructions

#This lab is test-driven, so run the test suite to get started and use the test
#output to get the program working.

#**Hints:**

#- How will you control for parsing a list of email addresses that is _either_
 # comma separated _or_ separated by a white space?
#- Use an `attr_accessor` to set and get the list of email addresses
require 'pry'
class EmailAddressParser
    attr_accessor :email_addresses
     def initialize(email_addresses)
        @email_addresses = email_addresses
     end

     def parse
        #binding.pry
        @email_addresses.split(/[,\s]+/).uniq
      #  binding.pry
    end
   

    
    #attr_accessor :email_addresses
    #def parse(email_addresses)
    #end

end