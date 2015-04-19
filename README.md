# Ngnews

[![](http://img.shields.io/codeclimate/github/netguru/ngnews.svg?style=flat-square)](https://codeclimate.com/github/netguru/ngnews)
[![](http://img.shields.io/codeclimate/coverage/github/netguru/ngnews.svg?style=flat-square)](https://codeclimate.com/github/netguru/ngnews)
[![](http://img.shields.io/gemnasium/netguru/ngnews.svg?style=flat-square)](https://gemnasium.com/netguru/ngnews)

Ngnews aka NG News is an app aggregating all the news happening in your company.
You can store data like:
* new team member
* new article on your blog
* new link added to company knowledge-base
* event being held
* some office changes, like buying new coffee machine
* etc.

![ngnews](https://cloud.githubusercontent.com/assets/134795/7221226/f55b1c88-e6e2-11e4-8b01-bc7ed756a086.png)

See [CHANGELOG](https://github.com/netguru/ngnews/blob/master/CHANGELOG.md) for the latest changes in the app.

## Technologies

* Ruby on Rails 4.2
* Ruby 2.2
* Postgres

## Setup

Run the following command:

```
bin/setup
```

## Development

### Guard

Keep guard running at all times:

```
bin/guard
```

### Code Style

Please follow Ruby style guide available [here](https://github.com/bbatsov/ruby-style-guide).

Use `bin/guard` to have your development process be watched by an automated tool
which checks your tests and code syntax. If you have any issues about the
feedback provided by `rubocop`, please consult it with dev team and apply
changes to `.rubocop.yml` file.

## Tests

We use RSpec 3.

## Contributing

If you make improvements to this application, please share with others.

* Fork the project on GitHub.
* Make your feature addition or bug fix.
* Commit with Git.
* Send the author a pull request.

If you add functionality to this application, create an alternative
implementation, or build an application that is similar, please contact
me and I’ll add a note to the README so that others can find your work.

## License

MIT. See [LICENSE](https://github.com/netguru/ngnews/blob/master/LICENSE).
