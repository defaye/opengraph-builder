# OpenGraph Builder
OpenGraphBuilder helps you setup OpenGraph meta-tags

This plugin is designed to be used in view templates and is a simple wrapper 
for specifying OpenGraph meta-tags.

See [ogp.me](https://ogp.me/)

## Usage

Call `og_content` without arguments to specify where it should render
OpenGraph meta-tag content and call `og_content` with arguments to send
content to the placeholder.

E.g.
```
<% og_content 'twitter', card: 'content',
                        title: 'Example title!',
                        description: 'Example description',
                        site: '@example',
                        image: 'https://placehold.it/100',
                        creator: '@example' %>
```
To load this content into a layout view, you would then simply call
```
<%= og_content %>
```

The method signature is effectively `og_content(prefix = 'og', **options)`.
So you can call `og_content url: 'https://duckduckgo.com'` and it will store
`<meta property="og:url" content="https://duckduckgo.com">` for you ready
for when `og_content` is called in a layout template.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'opengraph_builder'
```

And then execute:
```bash
$ bundle
```

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
