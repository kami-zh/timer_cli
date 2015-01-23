# TimerCli

TimerCli is a timer that runs on command line interface.
It notifies you with Growl when time is up.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'timer_cli'
```

And then execute:

```
$ bundle
```

Or install it yourself as:

```
$ gem install timer_cli
```

## Usage

You can use `timer_cli` command as follows.
The available units are `s` (second) and `m` (minute).

Following example, you will show a Growl notification after 15 seconds.

```
$ timer_cli 15s
```

## Contributing

1. Fork it ( https://github.com/kami30k/timer_cli/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
