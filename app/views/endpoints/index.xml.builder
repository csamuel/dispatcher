xml.instruct!

xml.vxml(:version => "2.1", :xmlns => "http://www.w3.org/2001/vxml") do

  xml.property(:name => "fetchaudio", :value => "http://24.40.31.85:8180/agent-ivr-prompts/en/percolate.wav")
  xml.property(:name => "fetchaudiodelay", :value => "2s")
  xml.property(:name => "fetchaudiominimum", :value => "4s")
  xml.property(:name => "termtimeout", :value => "5000ms")
  xml.property(:name => "timeout", :value => "7000ms")
  xml.property(:name => "interdigittimeout", :value => "5000ms")
  xml.property(:name => "fetchtimeout", :value => "10s")
  xml.property(:name => "inputmodes", :value => "dtmf")
  
  xml.script "function removeSpaces(string) {return string.split(' ').join('');}"
  
  xml.form :id => "xivrDispatcher" do
    xml.field :name => "menuChoice" do
      xml.grammar :mode=>"dtmf", 
                  :src=> page_path("xivr_dispatcher", :format=>"xml"), 
                  :type=>"application/srgs+xml"
      
      prompts = @endpoints.map do |e|
                    "For #{e.name}, press #{e.extension}. "
                end.join("\n")
      
      xml.prompt prompts
      
      xml.noinput(:count=>"1") do
        xml.submit(:next => url_for(:action => 'index', :format => 'xml')) 
      end
      
      xml.filled do
        xml.var(:name=>"menuChoiceFormatted", :expr=>"removeSpaces(menuChoice)")
        
        xml.if(:cond=> "menuChoiceFormatted == '0'") do
          xml.submit(:next => url_for(:action => 'index', :format => 'xml'))
          @endpoints.each do |e|
            xml.elseif(:cond=> "menuChoiceFormatted == '#{e.extension}'")
            xml.prompt("Starting #{e.name}")
            xml.submit(:next => e.url)
          end
          xml.else
          xml.prompt do
            xml.value(:expr=>"menuChoiceFormatted")
            xml.text! "is an invalid choice."
            
            xml.submit(:next => url_for(:action => 'index', :format => 'xml')) 
          end  
        end       
      end  
    end  
  end
end