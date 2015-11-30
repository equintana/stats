pptrataeter d,fgdfgd

un cambio en stats repositorio original
# Stats

Stats is a script which given a CSV file compound for 2 columns with samples data, where first one means 'x' and second one is means 'y' is capable to calculate:

Regression parameters: βo and β₁
Improved prediction: P, where P = βo + β₁ * E ( E=386 )
Correlation coefficient: r


## Installation

Add this line to your application's Gemfile:

    gem 'stats'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install stats

## Usage

	$ ruby stats.rb data.csv

where 'data.csv' is like this:

	130,186
	650,699
	99,132
	150,272
	128,291
	302,331
	95,199
	945,1890
	368,788
	961,1601

Output:

	Test data_1.csv> b0: -22.5401, b1: 1.7279, r: 0.9545, r2: 0.9111, p:644.4293

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
