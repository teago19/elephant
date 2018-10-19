Elephant
==============
<!-- [![Gem Version](https://badge.fury.io/rb/serialize_partials_attributes.svg)](https://badge.fury.io/rb/serialize_partials_attributes)

This gem adds the funcionality to filter via query params with attributes of a model will be serialized.

Installation
------------  
serialize_partials_attributes will only work on Rails 5.1 and up.

To use it, add it to your Gemfile:

```ruby
gem 'serialize_partials_attributes'
```

Getting started
===============

## Setting up ##
Add at the top of your _config/application.rb_
```ruby
  require "serialize_partials_attributes"
```
## Usage Example ##
On serlializer we have:
```ruby
class TestModelSerializer < ActiveModel::Serializer
  attributes :id, :attribute_1, :attribute_2, :attribute_3, :attribute_4
end
```
Add the param _*fields*_ to your query:
```
 GET "/test_models/:some_id?fields=attribute_1+attribute_2"
```
This is telling to your controller thar you just want *attrubute_1* and *attribute_2*.
The result json will be:
```
{
  attribute_1: "LOREM IPSUM"
  attribute_2: "LOREM IPSUM"
}

```

Configurations
===============
Create _*initializers/serializer_partials_attributes.rb*_
```ruby
#initializers/serializer_partials_attributes.rb
SerializePartialsAttributes::Configuration.field = "<change_here>" #Default is set to "fields"
SerializePartialsAttributes::Configuration.split_by = "<change_here>" #Default is set to "+"
```


Configurations
===============
* Partials for _belongs_to_ relations
* Partials for _have_many_ relations -->