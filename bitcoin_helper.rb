require 'yaml'

language_data = YAML.load_file( File.join(File.dirname(File.expand_path(__FILE__)), 'language.yml' )

say_no = language_data[:say_no]
say_yes = language_data[:say_yes]

print "Ask me if you should buy or sell Bitcoin. \n\n"

until ( user_input = gets.chomp.strip ) =~ /(?:ex|qu)it/ix
	input_is_ques = user_input[ -1 ].eql? '?'

  if user_input =~ /^.*(sell.*bit\ coin|sell.*bitcoin).*$/ix && input_is_ques
  	puts
    puts "#{ say_no[ rand( say_no.length )]}, you should NOT sell Bitcoin. You should buy bitcoin"
  elsif user_input =~ /^.*(buy.*bit\ coin|buy.*bitcoin).*$/ && input_is_ques
  	puts
    puts "#{ say_yes[ rand( say_yes.length ) ] }, you should definitely buy Bitcoin."
  else
  	puts
    puts "Please ask a question about buying or selling Bitcoin, and end it with '?'"
  end
  print "Ask me if you should sell you Bitcoin. \n\n"
end

