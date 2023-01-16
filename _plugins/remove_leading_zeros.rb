# Jekyll plugin for removing leading zeros

module Jekyll
  module RemoveLeadingZerosFilter
	def removeleadingzeros(inputNum)
	  #input.gsub(/^[0]+(.*)/,'')
	  inputString = inputNum.to_s()
	  if /^[0]+(.*)/ =~ inputString
	    /^[0]+(.*)/.match(inputString)[1]
	  else
		inputNum
	  end
	end
  end
end

Liquid::Template.register_filter(Jekyll::RemoveLeadingZerosFilter)