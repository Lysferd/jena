require 'java'
require 'jena_jruby/jars'
require 'builder'

# Make a selection of key Jena classes available in a convenient module
module Jena

  # Import all classes under org.apache.jena.*
  module Model
    include_package org.apache.jena.rdf.model
  end

  module Util
    include_package org.apache.jena.util
  end

  module Shared
    include_package org.apache.jena.shared
  end

  module Vocab
    include_package org.apache.jena.vocabulary
  end

  module Query
    include_package org.apache.jena.query
  end

  module Ontology
    include_package org.apache.jena.ontology
  end

  module TDB
    include_package org.apache.jena.tdb
  end

  module Reasoner
    include_package org.apache.jena.reasoner
  end

  module Assembler
    include_package org.apache.jena.assembler
  end
end

%w[
  version
  utils
  query_utils
  node_utils
  namespace
].each {|f| require "jena_jruby/#{f}"}
