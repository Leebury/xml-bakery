require 'spec_helper'

describe "Bakery" do 

	before(:all) do
		@menu = Nokogiri::XML(open('./bakery_xml.xml'))
	end

	it "Should not have calories over 1000" do

		@menu.xpath('//calories').each do |x|
			 expect(x.text.to_i).to be < 1000

		end
	end

	it "Should not have a price over £8" do

		@menu.xpath('//price').each do |x|
    		expect(x.text.gsub('£', '').to_f.class).to be < 8

		end 
	end

	it "Homestyle breakfast should be the most expensive on the menu" do
		#Stick to requirements it doesn't have to be dynamic if it doesn't need it
		@menu.xpath('//name').each do |x|

			if x.text == "Homestyle Breakfast"
				@homestyle = x.next_element.text.gsub('£', '').to_f

			end

			if  @comparison = x.next_element.text.gsub('£', '').to_f
			end

			expect(@comparison > @homestyle)

	end
end

	# it "All menu items which have waffles should have 2 waffles" do

	# end

end