class CreateDivisions < ActiveRecord::Migration
  def self.up
    create_table :divisions do |t|
      t.string :Description
      t.string :code
      t.timestamps
    end
   
   execute <<-SQL 
              INSERT INTO divisions (Description,code) values( 'Agriculture, Hunting and related Service activities','01');
  SQL
  execute <<-SQL
              INSERT INTO divisions (Description,code) values( 'Forestry, logging and related Service activities','02');
   SQL
  execute <<-SQL
              INSERT INTO divisions (Description) values( 'Fishing, Operation of fish hatcheries and fish farms;');
     SQL
  execute <<-SQL
              INSERT INTO divisions (Description,code) values( 'Service activities incidental to fishing','05');
   SQL
  execute <<-SQL
              INSERT INTO divisions (Description,code) values( 'Mining of coal and lignite, extraction of peat','10');
   SQL
  execute <<-SQL
              INSERT INTO divisions (Description,code) values( 'Extraction of crude petroleum and natural gas, service activities incidental to oil and
gas extraction excluding surveying','11');
 SQL
  execute <<-SQL
              INSERT INTO divisions (Description,code) values( 'Mining of uranium and thorium ores','12');
 SQL
  execute <<-SQL
              INSERT INTO divisions (Description,code) values( 'Mining of metal ores','13');
 SQL
  execute <<-SQL
              INSERT INTO divisions (Description,code) values( 'Other Mining and Quarrying','14');
           SQL
 execute <<-SQL 
              INSERT INTO divisions (Description,code) values( 'Manufacture of food products and beverages','15');
           SQL
 execute <<-SQL 
              INSERT INTO divisions (Description,code) values( 'Manufacture of tobacco products','16');
           SQL
 execute <<-SQL 
              INSERT INTO divisions (Description,code) values( 'Manufacture of textiles','17');
           SQL
 execute <<-SQL 
              INSERT INTO divisions (Description,code) values( 'Manufacture of wearing apparel, dressing and dyeing of fur','18');
           SQL
 execute <<-SQL 
              INSERT INTO divisions (Description,code) values( 'Tanning and dressing of leather, manufacture of luggage handbags, saddlery &
harness and footwear','19');
           SQL
 execute <<-SQL 
              INSERT INTO divisions (Description,code) values( 'Manufacture of wood and of products of wood and cork, except furniture; manufacture
of articles of straw and plating materials','20');
           SQL
 execute <<-SQL 
              INSERT INTO divisions (Description,code) values( 'Manufacture of paper and paper products','21');
           SQL
 execute <<-SQL 
              INSERT INTO divisions (Description,code) values( 'Publishing, printing and reproduction of recorded media','22');
           SQL
 execute <<-SQL 
              INSERT INTO divisions (Description,code) values( 'Manufacture of coke, refined petroleum products and nuclear fuel','23');
           SQL
 execute <<-SQL 
              INSERT INTO divisions (Description,code) values( 'Manufacture of chemicals and chemical products','24');
           SQL
 execute <<-SQL 
              INSERT INTO divisions (Description,code) values( 'Manufacture of rubber and plastic products','25');
           SQL
 execute <<-SQL 
              INSERT INTO divisions (Description,code) values( 'Manufacture of other non-metallic mineral products' ,'26');
           SQL
 execute <<-SQL 
              INSERT INTO divisions (Description,code) values( 'Manufacture of basic metals','27');
           SQL
 execute <<-SQL 
              INSERT INTO divisions (Description,code) values( 'Manufacture of fabricated metal products, except machinery and equipments','28');
           SQL
 execute <<-SQL 
              INSERT INTO divisions (Description,code) values( 'Manufacture of machinery and equipment n.e.c','29');
           SQL
 execute <<-SQL 
              INSERT INTO divisions (Description,code) values( 'Manufacture of office, accounting and computing machinery','30');
           SQL
 execute <<-SQL 
              INSERT INTO divisions (Description,code) values( 'Manufacture of electrical machinery and apparatus n.e.c','31');
           SQL
  execute <<-SQL 
              INSERT INTO divisions (Description,code) values( 'Manufacture of radio, television and communication equipment and apparatus','32');
           SQL
 execute <<-SQL 
              INSERT INTO divisions (Description,code) values( 'Manufacture of medical, precision and optical instruments, watches and clocks','33');
           SQL
  execute <<-SQL 
              INSERT INTO divisions (Description,code) values( 'Manufacture of motor vehicles, trailers and semi-trailers ','34');
           SQL
 execute <<-SQL 
              INSERT INTO divisions (Description,code) values( 'Manufacture of other transport equipment','35');
           SQL
 execute <<-SQL 
              INSERT INTO divisions (Description,code) values( 'Manufacture of furniture; manufacturing n.e.c','36');
           SQL
 execute <<-SQL 
              INSERT INTO divisions (Description,code) values( 'Recycling','37');
           SQL
 execute <<-SQL 
              INSERT INTO divisions (Description,code) values( 'Electricity, gas, steam and hot water supply','40');
           SQL
 execute <<-SQL 
              INSERT INTO divisions (Description,code) values( 'Collection, purification and distribution of water','41');
           SQL
 execute <<-SQL 
              INSERT INTO divisions (Description,code) values( 'Construction','45');
           SQL
 execute <<-SQL 
              INSERT INTO divisions (Description,code) values( 'Sale, maintenance and repair of motor vehicles and motor cycles; retail sale of automotive fuel','50');
           SQL
  execute <<-SQL 
              INSERT INTO divisions (Description,code) values( 'Wholesale trade and commission trade, except of motor vehicles and motorcycles','51');
           SQL
  execute <<-SQL 
              INSERT INTO divisions (Description,code) values( 'Retail trade, except of motor vehicles and motorcycles, repair of personal and household goods','52');
           SQL
  execute <<-SQL 
              INSERT INTO divisions (Description,code) values( 'Hotels and Restaurants','55');
           SQL
  execute <<-SQL 
              INSERT INTO divisions (Description,code) values( 'Land transport; transport via pipelines','60');
           SQL
  execute <<-SQL 
              INSERT INTO divisions (Description,code) values( 'Water Transport ','61');
           SQL
  execute <<-SQL 
              INSERT INTO divisions (Description,code) values( 'Air Transport ','62');
           SQL
           
  execute <<-SQL 
              INSERT INTO divisions (Description,code) values( 'Supporting and auxiliary transport activities, activities of travel agencies','63');
           SQL
  execute <<-SQL 
              INSERT INTO divisions (Description,code) values( 'Post and telecommunications','64');
           SQL

  execute <<-SQL 
              INSERT INTO divisions (Description,code) values( 'Financial intermediation, except insurance and pension funding','65');
           SQL
  execute <<-SQL 
              INSERT INTO divisions (Description,code) values( 'Insurance and pension funding, except compulsory social security','66');
           SQL
  execute <<-SQL 
              INSERT INTO divisions (Description,code) values( 'Activities auxiliary to financial intermediation','67');
           SQL
  execute <<-SQL 
              INSERT INTO divisions (Description,code) values( 'Real estate activities','70');
           SQL
  execute <<-SQL 
              INSERT INTO divisions (Description,code) values( 'Renting of machinery and equipment without operator and of personal and household
goods','71');
           SQL
  execute <<-SQL 
              INSERT INTO divisions (Description,code) values( 'Computer and related activities','72');
           SQL
  execute <<-SQL 
              INSERT INTO divisions (Description,code) values( 'Research and Developments','73');
           SQL
  execute <<-SQL 
              INSERT INTO divisions (Description,code) values( 'Other Business Activities','74');
           SQL
  execute <<-SQL 
              INSERT INTO divisions (Description,code) values( 'Public Administration and Defence, compulsory social security','75');
           SQL
  execute <<-SQL 
              INSERT INTO divisions (Description,code) values( 'Education','80');
           SQL
  execute <<-SQL 
              INSERT INTO divisions (Description,code) values( 'Health and Social Work','85');
           SQL
  execute <<-SQL 
              INSERT INTO divisions (Description,code) values( 'Sewage and refuse disposal, sanitation and similar activities','90');
           SQL
  execute <<-SQL 
              INSERT INTO divisions (Description,code) values( 'Activities of membership organizations n.e.c.','91');
           SQL
  execute <<-SQL 
              INSERT INTO divisions (Description,code) values( 'Recreational, cultural and sporting activities','92');
           SQL
 execute <<-SQL 
              INSERT INTO divisions (Description,code) values( 'Other Service activities','93');
           SQL
 execute <<-SQL 
              INSERT INTO divisions (Description,code) values( 'Activities of private households as employers of domestic staff','95');
           SQL
 execute <<-SQL 
              INSERT INTO divisions (Description,code) values( 'Undifferentiated goods-producing activities of private households for own use','96');
           SQL

 execute <<-SQL 
              INSERT INTO divisions (Description,code) values( 'Undifferentiated service-producing activities of private households for own use','97');
           SQL
           execute <<-SQL 
              INSERT INTO divisions (Description,code) values( 'Extra territorial organizations and bodies','99');
           SQL

 end  
  def self.down
    drop_table :divisions
  end
        
  
end
