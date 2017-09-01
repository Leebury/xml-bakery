require 'nokogiri'

doc = Nokogiri::XML(open('./bakery_xml.xml'))

# puts doc

# puts doc.xpath('//food').first   

# puts doc.search('price').to_a
# puts doc.search('price').empty?
# puts doc.search('price').length

# puts doc.search('//document').first.parent

# puts doc.xpath('//calories').text
# doc.xpath('//price').each do |x|
#     puts x.text.gsub ('£', '').to_f.class
# end 

# doc.xpath('//price').each do |x|
#     boolean = true

#     if x.text == "Homestyle Breakfast"
#       @homestyle = x.next_element.text.gsub('£', '').to_f
#     end
#     if x.text.gsub('£', '').to_f > @homestyle

# end

    doc.xpath('//price').each do |x|
      @boolean = true

      if x.text == "Homestyle Breakfast"
        @homestyle = x.next_element.text.gsub('£', '').to_f
        puts @homestyle.class
      end

      if  @comparison = x.next_element.text.gsub('£', '').to_f
        puts @comparison.class
      end 

      # expect(@boolean).to eq(true)

  end