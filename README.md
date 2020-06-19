# OpenGraph Builder

### Installation
```
gem install opengraph-builder
```

### Usage
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

### Dependencies
This plugin depends on Rails' `content_for` helper.
