pdf.text "THE COMPANIES ACT, 1956
COMPANY LIMITED BY SHARES
ARTICLES OF ASSOCIATION
OF CompanyAddress #{CompanyName.find_by_client_id(params[:client_id]).name}", :size => 20, :style => :bold,:align => :center

pdf.text "The name of company is #{CompanyName.find_by_client_id(params[:client_id]).name}"


	pdf.text ("The main Objects are <br>")

	pdf.text ("The main Objects are")

	pdf.text ("The main Objects are <br>")

	count = 0
	  @company_main_objects.each do |c|
	  	count += 1
   		 pdf.text  "#{count})" "#{c.description}", :size => 10
       end      	
	
	pdf.text "Incidental Object"
		count = 0
	 @company_incidental_objects.each do |c|
   		 count += 1
   		 pdf.text   "#{count})" "#{c.description}", :size => 10 
       end      	
	
	pdf.text "Other Object"
	count = 0
	 @company_other_objects.each do |c|
	  count += 1
   		 pdf.text   "#{count})" "#{c.description}", :size => 10
       end      	

	

