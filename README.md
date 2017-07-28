
This is a CLI program that answers any question along the lines of "should I buy bitcoin?" or "should I sell my bitcoins?". Sort of like a magic 8ball. I'm not a financial advisor, don't take the answers seriously.

### Usage
* when the script runs, type *exit* or *quit* to terminate.
```
$ git clone https://github.com/rskelley9/should_I_buy_btc.git

$ cd should_I_buy_btc && ruby ruby_helper.rb

#=> Ask me whether you should buy or sell Bitcoin.

$ should I buy btc?

#=> Eff yes, you should definitely buy Bitcoin.
#=> Next question.

$ should I buy bit coin?

#=> 100%, you should definitely buy btc.
#=> Next question.

$ i'm thinking of selling some bitcoin, is it a good idea?
#=> under no circumstances, you should NOT sell Bitcoin. You should buy Bitcoin.
#=> Next question.

$ Should I buy or should I sell btc?
#=> Easy, you should definitely buy some BTC.
#=> Next question.

$ exit
```
