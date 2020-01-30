#Someone has given you a list of people's contact information. You have been asked to collect the person's name, telephone number and Twitter handle. We need a method that uses regular expressions to retrieve the name (which is always first), their phone number (which can come in multiple forms) and their Twitter handle, which can be any other element with in the array, and return it as a nested hash.

#What the output should return

# {
#  "James Spader" => {phone => "214.555.1357", twitter => "@samspade"},
#  "Jenny Forrest" => {phone => "312-555-2244", twitter => "@imaboat"},
#  "Jimmy Stuart" =>{phone => "313 555 9865", twitter => "@getyerwings"},
#     # continued key/value pairs...
# }
{"James Spader"=>{:phone=>"214.555.1357", :twitter=>"@samspade"}, 
"Jenny Forrest"=>{:phone=>"312-555-2244", :twitter=>"@imaboat"}, 
"Jimmy Stuart"=>{:phone=>"313 555 9865", :twitter=>"@getyerwings"}, 
"Mountain Joe"=>{:phone=>"312-555-9224", :twitter=>"@hairy"}, 
"Nerf Herder"=>{:phone=>"310.555.2234", :twitter=>"@blueharvest"}}

# Commit 1 - Research 

  # 1. [da]

    #

  # 2. \s

    #

  # 3. \W

    #

  # 4. \w

    #

  # 5. \A. 

    # What are the two parts to this pattern?

  # 6. \w{3} 

    # Why does this pattern not grab all of the letters?

  # 7. \w[ ]\w

    # 


  # Bonus Questions

  # 8. What is the difference between \w and \w+

    # 

  # 9. [\n]

    # 




# Commit 2 - Pseudocode 

  # input: describe the nested datatype?

    #It's an array of nested arrays.

  # output: describe the nested datatype and give a literal example you expect to be returned?

    # I expect a hash of key value pairs to be returned, where the value is a hash of the user's twitter and phone number stored and the key is a string of the name of the individual. 

  # Steps in plain english
    # 1 - First, define a place where you will store your contacts
    # 2 - Organize your contact list so that the individuals name will appear first, followed by their phone number and twitter handle
    # 2 - Go through the outer nested array, stopping at each individuals contact information
    # 3 - Since you know the name is in the first position of the given information for a contact, take that name and place it in your contact storage place
    # 4 - Next, find their phone number in the mismash of information by locating a nine-digit sequence
    # 5 - Place that information inside of the contact number for that contact.
    # 6 - Finally, find the individual's twitter handle by locating an @ symbol and finding the subsequent characters until you get to a quotation mark. 
    # 7 - Store that information inside of the twitter spot for that contact. 


# Commit 3 - Initial Solution 

  def collect_contact_info(data)
    contact_list = {}
    name = ""

    data.each do |contact_array|
      contact_array.each do |information|
        #Name
        if information[0].match(/\A[a-zA-Z]+ [a-zA-Z]+$/)
          name = information[0]
          contact_list[name] = {:phone => "", :twitter => ""}
          next
        end
        #Phone Number
        if information[0].match(/^\d{3}(\s|.|-)?\d{3}(\s|.|-)?\d{4}$/)
          contact_list[name][:phone] = information[0] 
        end
        #Twitter
        if information[0].match(/@.*$/)
          contact_list[name][:twitter] = information[0] 
        end
      end
    end
  end

# persons_name = contact_array.select {|information| /"\w+ \w+"/.match(information[0])}
# contact_list[contact_array[0][0]] = {:phone => "", :twitter => ""}

# Commit 5 - Refactor Solution 

  # paste your initial solution here, comment out the code in the seciton above then refactor your solution.

# Commit 4 - Runner Code / Tests

  # vvvvvvvvvvvvvvvvvvvvvvvvv Don't touch the code under this line. vvvvvvvvvvvvvvvvvvvvvvvvv

  bloggers_information = [[["James Spader"],["214.555.1357"],["123 N South St."],["Chicago"],["il"],["60645"],["@samspade"]], [["Jenny Forrest"],["Schamberg"],["il"],["312-555-2244"],["@imaboat"]], [["Jimmy Stuart"],["@getyerwings"],["313 555 9865"],["1128 Alameda Ave"],["Glendale"],["CA"],["92606"]], [["Mountain Joe"],["3035550021"],["@campfire"]], [["Mr. Henderson"],["312-555-9224"],["Chicago"],["il"],["60647"],["@hairy"]], [["Nerf Herder"],["123 N South St."],["Chicago"],["il"],["60645"],["@blueharvest"],["310.555.2234"]]]

  p collect_contact_info(bloggers_information)

  # ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ Don't touch above ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  # vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv Write Tests Below vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv

