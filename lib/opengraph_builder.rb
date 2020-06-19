# frozen_string_literal: true

# OpenGraphBuilder helps you setup OpenGraph meta-tags
#
# This plugin is designed to be used in view templates and is a simple wrapper
# for specifying OpenGraph meta-tags.
#
# @see https://ogp.me/
#
module OpenGraphBuilder
  def self.included(base)
    base.include InstanceMethods
    # base.extend ClassMethods
  end

  # Container for the instance methods that would be made available to the
  # using class
  module InstanceMethods
    # Call og_content without arguments to specify where it should render
    # OpenGraph meta-tag content and call og_content with arguments to send
    # content to the placeholder.
    #
    # E.g.
    # <% og_content 'twitter', card: 'content',
    #                       title: 'Example title!',
    #                       description: 'Example description',
    #                       site: '@example',
    #                       image: 'https://placehold.it/100',
    #                       creator: '@example' %>
    #
    # To load this content into a layout view, you would then simply call
    # <%= og_content %>
    #
    def og_content(prefix = nil, **options)
      if prefix || options.empty?
        content_for :opengraph_builder_og_content
      else
        options.each do |k, v|
          content_for :opengraph_builder_og_content,
                      format('<meta property="%<prefix>s:%<k>s" content="%<v>s">',
                             [prefix || 'og', k, v])
        end
      end
    end
  end
end
