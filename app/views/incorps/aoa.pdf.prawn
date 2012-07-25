pdf.text "THE COMPANIES ACT, 1956
COMPANY LIMITED BY SHARES
ARTICLES OF ASSOCIATION
OF CompanyAddress #{CompanyName.find_by_client_id(params[:client_id]).name}", :size => 20, :style => :bold,:align => :center

	  @contacts.each do |c|
    pdf.text  "Directors:  #{c.din_id}"
       end      	


