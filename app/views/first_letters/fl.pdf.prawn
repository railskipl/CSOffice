pdf.text "#{FirstLetter.find_by_client_id(params[:client_id]).cs_name}", :size => 20, :style => :bold,:align => :center
pdf.text "#{FirstLetter.find_by_client_id(params[:client_id]).header}", :size => 20, :style => :bold,:align => :center

pdf.text "Date:
To Director
#{CompanyName.find_by_client_id_and_status(params[:client_id],true).name}"

pdf.text "Dear Sir
Please find enclosed herewith:
1. Certificate of Incorporation of #{FirstLetter.find_by_client_id(params[:client_id]).company_name} bearing No. #{IncorporatedCompanyName.find_by_client_id(params[:client_id]).cin} dated #{IncorporatedCompanyName.find_by_client_id(params[:client_id]).doi} original with a corrected copy of the Memorandum and Articles of Association as registered with the Registrar of Companies, Maharashtra, Mumbai.You may get the certificate laminated and framed for convenience. More copies of Memorandum and articles be made with a photocopy of the certificate attached to it so that the same can be supplied as a certified copy wherever required to be submitted.

2. Our bill with statement of expenses.

3. A list of various returns required to be filed by your company from time to time and other requirements as to Board meeting etc.

4. A draft resolution for opening of bank account.

5.1. The subscribers have taken #{Share.find_by_client_id(params[:client_id]).total_no_of_equity_share} equity shares of Rs. #{Share.find_by_client_id(params[:client_id]).total_amt_of_preference_share} each in the company totaling Rs. #{Share.find_by_client_id(params[:client_id]).total_no_of_equity_share} equity shares of Rs. #{Share.find_by_client_id(params[:client_id]).total_amt_of_subscribed_preference_share}. The subscribers should pay the amount for shares taken by them to the company as under and the company shall not commence any activity till the amount is deposited in the bank account of the company.

6. Specimen letters for appointment of first auditors. First auditors to be appointed within one month of the incorporation of the Company.

7. A specimen of share application form. This can be photocopied and used for receiving share application money.

8. The following stationery is required for keeping the various records under the companies Act. 1956. You may procure the same from #{FirstLetter.find_by_client_id(params[:client_id]).stationary_name} :
(i) Combined Register,
(ii) Fixed Assets Register,
(iii) Loose Leaf Binder & leaves for printing of minutes and
(iv) Common Seal.
(v) Share certificates

You may call on us for any clarification in this regard.

Thanking you,

Yours faithfully

#{FirstLetter.find_by_client_id(params[:client_id]).cs_name}

",:align => :justify
