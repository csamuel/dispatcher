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
                
Endpoint.create(:url => 'http://24.40.31.85:8180/d2/devStart/devStartDivr.vxml',
                :extension => '3', 
                :name => 'D2 QA RC')

Endpoint.create(:url => 'http://24.40.31.85:8180/tech-ivr/start/start.vxml', 
                :extension => '4', 
                :name => 'Tech IVR Demo')

Endpoint.create(:url => 'http://24.40.31.85:8180/dispatcher-fj.vxml',
                :extension => '5', 
                :name => "Fred's Machine")

Endpoint.create(:url => 'http://10.25.241.110:8080/agent-ivr/menus/transferEntryPoint.vxml',
                :extension => '55',
                :name => "Direct Entry Fred's Machine")

Endpoint.create(:url => 'http://24.40.31.85:8180/outboundDialer.vxml?accountId=1113034566667890',
                :extension => '6',
                :name => "Outbound Dialer Dev")

Endpoint.create(:url => 'http://24.40.31.85:8180/outboundDialer-answeringmachine.vxml?callDisposition=answeringmachine',
                :extension => '66',
                :name => "Outbound Dialer Dev Answering Machine")

Endpoint.create(:url => 'http://24.40.31.85:8180/dispatcher-hh.vxml',
                :extension => '7',
                :name => "HH's machine")

Endpoint.create(:url => 'http://24.40.46.66:9015/agent-ivr/devStart/devStartDivr.vxml',
                :extension => '8',
                :name => "Vamsi's Agent Machine")

Endpoint.create(:url => 'http://147.191.22.173:8080/outbound-dialer/start/start.vxml',
                :extension => '16',
                :name => "Vamsi's Outbound Machine")

Endpoint.create(:url => 'http://24.40.31.85:8180/dispatcher-vk.vxml',
                :extension => '24',
                :name => "Vamsi's Dispatcher")

Endpoint.create(:url => 'http://24.40.46.66:9010/d2/devStart/devStart.vxml',
                :extension => '25',
                :name => "Vamsi's DIVR")

Endpoint.create(:url => 'http://147.191.22.66:8080/tech-ivr/start/start.vxml',
                :extension => '32',
                :name => "Vamsi's Tech IVR")

Endpoint.create(:url => 'http://pacdcivrqaapp01:8180/dispatcher-mk-agent.vxml',
                :extension => '9',
                :name => "the infamous Mick kuhNEWtsuhn's machine")

Endpoint.create(:url => 'http://pacdcivrqaapp01:8180/dispatcher-mk-agent.vxml',
                :extension => '99',
                :name => "the infamous Mick kuhNEWtsuhn's machine")

Endpoint.create(:url => 'http://pacdcivrqaapp01:8180/dispatcher-au-agent.vxml',
                :extension => '10',
                :name => "Ashwin's Dispatcher")

Endpoint.create(:url => 'http://24.40.46.66:9015/agent-ivr/devStart/devStart.vxml',
                :extension => '12',
                :name => "Agent IVR Release candidate")

Endpoint.create(:url => 'http://24.40.46.66:9015/tech-ivr/start/start.vxml',
                :extension => '13',
                :name => "Tech IVR Release candidate")

Endpoint.create(:url => 'http://24.40.31.85:8180/agent-ivr/devStart/devStartAgent.vxml',
                :extension => '14',
                :name => "Agent on Demo")

Endpoint.create(:url => 'http://24.40.46.66:9015/agent-ivr/devStart/devStartAgent.vxml',
                :extension => '15',
                :name => "Agent Release Candidate")

Endpoint.create(:url => 'http://24.40.31.85:8180/agent-ivr/devStart/devStartPaymentLine.vxml',
                :extension => '18',
                :name => "Payment Line Demo")

Endpoint.create(:url => 'http://pasundtastgap01:8190/agent-ivr/devStart/devStartDivr.vxml',
                :extension => '19',
                :name => "D2 on Staging")

Endpoint.create(:url => 'http://24.40.46.66:9010/tech-ivr/start/start.vxml',
                :extension => '22',
                :name => "Tech IVR Dev")

Endpoint.create(:url => 'http://24.40.31.85:8180/xoc/callFlow/welcome.vxml',
                :extension => '27',
                :name => "XOC RC")

Endpoint.create(:url => 'http://10.125.251.113:8080/d2/devStart/devStartDivr.vxml',
                :extension => '42',
                :name => "D2 on Staging")

Endpoint.create(:url => 'http://pacdcdtaapp01:8290/agent-ivr/devStart/devStartDivr.vxml',
                :extension => '71',
                :name => "8290 on App01")

Endpoint.create(:url => 'http://pacdcdtaapp02:8290/agent-ivr/devStart/devStartDivr.vxml',
                :extension => '72',
                :name => "8290 on App02")

Endpoint.create(:url => 'http://pacdcdtaapp01:8180/agent-ivr/start/startAgentIvr.vxml',
                :extension => '85',
                :name => "App01 8180")

Endpoint.create(:url => 'http://pacdcdtaapp01:8190/agent-ivr/start/startAgentIvr.vxml',
                :extension => '86',
                :name => "App01 8190")

Endpoint.create(:url => 'http://pacdcdtaapp02:8180/agent-ivr/start/startAgentIvr.vxml',
                :extension => '81',
                :name => "App02 8180")

Endpoint.create(:url => 'http://pacdcdtaapp02:8190/agent-ivr/start/startAgentIvr.vxml',
                :extension => '82',
                :name => "App02 8190")

Endpoint.create(:url => 'http://d2-ivr-prd.cable.comcast.com:8080/agent-ivr/devStart/devStartDivr.vxml',
                :extension => '89',
                :name => "D2 VIP with payment line DNIS")

Endpoint.create(:url => 'http://pacdcdtaapp01:8280/agent-ivr/devStart/devStartDivr.vxml',
                :extension => '87',
                :name => "App01 8280")

Endpoint.create(:url => 'http://pacdcdtaapp02:8280/agent-ivr/devStart/devStartDivr.vxml',
                :extension => '88',
                :name => "App02 8280")

Endpoint.create(:url => 'http://pacdcdtaapp01:8180/agent-ivr/devStart/devStartDivr.vxml',
                :extension => '90',
                :name => "App01 8180")

Endpoint.create(:url => 'http://pacdcdtaapp01:8190/agent-ivr/devStart/devStartDivr.vxml',
                :extension => '91',
                :name => "App01 8190")

Endpoint.create(:url => 'http://pacdcdtaapp02:8180/agent-ivr/devStart/devStartDivr.vxml',
                :extension => '92',
                :name => "App02 8180")

Endpoint.create(:url => 'http://pacdcdtaapp02:8190/agent-ivr/devStart/devStartDivr.vxml',
                :extension => '93',
                :name => "App02 8190")

Endpoint.create(:url => 'http://AGENT-IVR-PRD-RC.cable.comcast.com:8080/agent-ivr/start/startAgentIvr.vxml',
                :extension => '94',
                :name => "VIP for Agent IVR RC")

Endpoint.create(:url => 'http://AGENT-IVR-PRD.cable.comcast.com:8080/agent-ivr/start/startAgentIvr.vxml',
                :extension => '95',
                :name => "VIP for Agent IVR Prod")

Endpoint.create(:url => 'http://D2-IVR-PRD-RC.cable.comcast.com:8080/agent-ivr/start/startDivisionalIvr.vxml',
                :extension => '96',
                :name => "VIP for D2 RC")

Endpoint.create(:url => 'http://D2-IVR-PRD.cable.comcast.com:8080/agent-ivr/start/startDivisionalIvr.vxml',
                :extension => '97',
                :name => "VIP for D2 Prod")

Endpoint.create(:url => 'http://AGENT-IVR-STAGE.cable.comcast.com:8080/agent-ivr/devStart/devStartDivr.vxml',
                :extension => '98',
                :name => "D2 VIP on Staging")









