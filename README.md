# Formtastic

[![Build Status](https://travis-ci.org/justinfrench/formtastic.svg?branch=master)](https://travis-ci.org/justinfrench/formtastic)
[![Inline docs](http://inch-ci.org/github/justinfrench/formtastic.svg?branch=master)](http://inch-ci.org/github/justinfrench/formtastic)
[![Code Climate](https://codeclimate.com/github/justinfrench/formtastic/badges/gpa.svg)](https://codeclimate.com/github/justinfrench/formtastic)
[![Gem Version](https://badge.fury.io/rb/formtastic.svg)](https://badge.fury.io/rb/formtastic)
[![Dependency](https://gemnasium.com/justinfrench/formtastic.png)](https://gemnasium.com/justinfrench/formtastic)

Formtastic is a Rails FormBuilder DSL (with some other goodies) to make it far easier to create beautiful, semantically rich, syntactically awesome, readily stylable and wonderfully accessible HTML forms in your Rails applications.

## Documentation & Support

* [Documentation is available on rdoc.info](http://rdoc.info/projects/justinfrench/formtastic)


## Compatibility

* Formtastic 4 will require Rails 4.1
* Formtastic 3 requires Rails 3.2.13 minimum
* Formtastic 2 requires Rails 3
* Formtastic, much like Rails, is very ActiveRecord-centric. Many are successfully using other ActiveModel-like ORMs and objects (DataMapper, MongoMapper, Mongoid, Authlogic, Devise...) but we're not guaranteeing full compatibility at this stage. Patches are welcome!

## The Story

One day, I finally had enough, so I opened up my text editor, and wrote a DSL for how I'd like to author forms:

```erb
  <%= semantic_form_for @article do |f| %>

    <%= f.inputs :name => "Basic" do %>
      <%= f.input :title %>
      <%= f.input :body %>
      <%= f.input :section %>
      <%= f.input :publication_state, :as => :radio %>
      <%= f.input :category %>
      <%= f.input :allow_comments, :label => "Allow commenting on this article" %>
    <% end %>
```

I also wrote the accompanying HTML output I expected, favoring something very similar to the fieldsets, lists and other semantic elements Aaron Gustafson presented in [Learning to Love Forms](http://www.slideshare.net/AaronGustafson/learning-to-love-forms-web-directions-south-07), hacking together enough Ruby to prove it could be done.


## It's awesome because...

* It can handle `belongs_to` associations (like Post belongs_to :author), rendering a select or set of radio inputs with choices from the parent model.
* It can handle `has_many` and `has_and_belongs_to_many` associations (like: Post has_many :tags), rendering a multi-select with choices from the child models.
* It's Rails 3/4 compatible (including nested forms).
* It has internationalization (I18n)!
* It's _really_ quick to get started with a basic form in place (4 lines), then go back to add in more detail if you need it.
* There's heaps of elements, id and class attributes for you to hook in your CSS and JS.
* It handles real world stuff like inline hints, inline error messages & help text.
* It doesn't hijack or change any of the standard Rails form inputs, so you can still use them as expected (even mix and match).
* It's got absolutely awesome spec coverage.
* There's a bunch of people using and working on it (it's not just one developer building half a solution).
* It has growing HTML5 support (new inputs like email/phone/search, new attributes like required/min/max/step/placeholder)


## Opinions

* It should be easier to do things the right way than the wrong way.
* Sometimes _more mark-up_ is better.
* Elements and attribute hooks are _gold_ for stylesheet authors.
* Make the common things we do easy, yet ensure uncommon things are still possible.


## Installation

* It will be installed easily


## Dependencies

There are none other than Rails itself, but...

* If you want to use the `:country` input, you'll need to install the [country-select plugin](https://github.com/stefanpenner/country_select) (or any other country_select plugin with the same API). Both 1.x and 2.x are supported, but they behave differently when storing data, so please see their [upgrade notes](https://github.com/stefanpenner/country_select/blob/master/UPGRADING.md) if switching from 1.x.
* There are a bunch of development dependencies if you plan to contribute to Formtastic


## How to contribute

* Fork the project on Github
* Install development dependencies (`bundle install` and `appraisal install`)
* Create a topic branch for your changes
* Ensure that you provide *documentation* and *test coverage* for your changes (patches won't be accepted without)
* Ensure that all tests pass (`bundle exec rake`)
* Create a pull request on Github (these are also a great place to start a conversation around a patch as early as possible)


## Project Info

Formtastic was created by [Justin French](http://www.justinfrench.com) with contributions from around 180 awesome developers. Run `git shortlog -n -s` to see the awesome.

The project is hosted on Github: [http://github.com/justinfrench/formtastic](http://github.com/justinfrench/formtastic), where your contributions, forkings, comments, issues and feedback are greatly welcomed.

Copyright (c) 2007-2016 Justin French, released under the MIT license.


