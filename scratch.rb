array = 
      [["James Spader"],["214.555.1357"],["123 N South St."],["Chicago"],["il"],["60645"],["@samspade"]]

array.each do |element|
  if element[0].match(/\A[a-zA-Z]+ [a-zA-Z]+$/)
    p element[0]
  end
end