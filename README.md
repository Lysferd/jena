# Gem wrapper for Apache Jena

This Gem provides convenience access to the [Apache Jena](http://jena.apache.org)
RDF platform. Jena is a widely used Java platform for parsing, storing, manipulating,
querying and publishing semantic web data and linked data. This gem provides a single
dependency so that JRuby programs can access all of the capabilities of Jena, including TDB,
conveniently from JRuby.

This gem provides the following benefits:

* a single dependency which includes all of the `.jar` files for the latest release
of Jena (3.6.0), including TDB.

* import key classes used by Jena-based programs into a `Jena::` module, to make code more compact

* some additional utility and convenience methods

## Using the gem

Once installed, just add to your code:

    require 'jena'

or add a suitable dependency to your bundle spec.

## Access to Jena from Java

Create a model:

    m = Jena::Model::ModelFactory.create_default_model

(JRuby automatically converts Java CamelCase names to Ruby lower_case names)

Add a statement:

    jruby-1.6.5 :003 > m = Jena::Model::ModelFactory.create_default_model
     => #<Java::ComHpHplJenaRdfModelImpl::ModelCom:0x135a4815>
    jruby-1.6.5 :004 > s = Jena::Model::ResourceFactory.create_resource "http://example.org/s"
     => #<Java::ComHpHplJenaRdfModelImpl::ResourceImpl:0x7b0f62cb>
    jruby-1.6.5 :005 > o = Jena::Model::ResourceFactory.create_resource "http://example.org/o"
     => #<Java::ComHpHplJenaRdfModelImpl::ResourceImpl:0x4879c985>
    jruby-1.6.5 :006 > p = Jena::Model::ResourceFactory.createProperty "http://example.org/p"
     => #<Java::ComHpHplJenaRdfModelImpl::PropertyImpl:0x3f7cd159>
    jruby-1.6.5 :007 > m.add s,p,o
     => #<Java::ComHpHplJenaRdfModelImpl::ModelCom:0x135a4815>
    jruby-1.6.5 :009 > m.toString
     => "<ModelCom   {http://example.org/s @http://example.org/p http://example.org/o} | >"

## Building and installing the gem

Since jena now includes TDB modules, those modules no longer need to be built locally.

To build the gem itself:

    $ rake build

or

    $ gem build jena.gemspec

To run the tests:

    $ bundle exec rake test
