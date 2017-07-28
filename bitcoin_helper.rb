require 'yaml'

@language_data =
  YAML.load_file(
    File.join(
      File.dirname(
        File.expand_path(__FILE__) ), 'language.yml' )
    )

prompt = "Ask me whether you should buy or sell Bitcoin."
alt_prompt = "Next question"
ques_num = 0

def print_f( str='' )
  print "\n > ", str, "\n\n"
end

def rand_resp( k )
   resps = @language_data[ k.to_s ]

   resps[ rand( resps.length ) ]
end

print_f prompt

until ( user_input = gets.chomp.strip ) =~ /(?:ex|qu)it/ix

  ques_num +=1

  if ( user_input[ -1 ] != '?' )

    print_f "Please ask a question ending with a question mark \'?\'"

  elsif user_input =~ /^.*((buy.*or.*sell.*(bit\ coin|btc|bitcoin))|(sell.*or.*buy.*(bit\ coin|btc|bitcoin))).*$/ix

    print_f "#{ rand_resp( 'bullish_phrases' ) }, #{ rand_resp( 'buy_clauses' ) }."

  elsif user_input =~ /^.*(sell.*(bit\ coin|btc|bitcoin)).*$/ix

    print_f "#{ rand_resp( 'say_no' ) }, #{ rand_resp( 'sell_clauses' ) }."

  elsif user_input =~ /^.*(buy.*(bit\ coin|btc|bitcoin)).*$/ix

    print_f "#{ rand_resp( 'say_yes' ) }, #{ rand_resp( 'buy_clauses' ) }."

  else

    print_f "Please ask a question about buying or selling Bitcoin."

  end

  sleep 0.5
  print_f ( ques_num.even? ? prompt : 'Next question.' )
end

