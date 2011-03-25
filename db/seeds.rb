# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

Endpoint.create(:url => 'http://24.40.46.66:9010/d2/devStart/devStart.vxml', 
                :extension => '1', 
                :name => 'D2 Dev')

Endpoint.create(:url => 'http://24.40.46.66:9015/d2/devStart/devStartDivr.vxml', 
                :extension => '2', 
                :name => 'D2 QA Esp Mocks')
                
Endpoint.create(:url => 'http://24.40.46.66:8180/d2/devStart/devStartDivr.vxml', 
                :extension => '3', 
                :name => 'D2 QA RC')

Endpoint.create(:url => 'http://24.40.31.85:8180/tech-ivr/start/start.vxml', 
                :extension => '4', 
                :name => 'Tech IVR Demo')
