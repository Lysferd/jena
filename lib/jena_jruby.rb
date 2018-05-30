require 'java'
require 'jena_jruby/jars'
require 'builder'

# Make a selection of key Jena classes available in a convenient module
module Jena
  include_package org.apache.jena

  # Import classes under org.apache.jena.*
  module Model
    include_package org.apache.jena.rdf.model
    include_package org.apache.jena.rdf.model.impl
  end

  module XML
    include_package org.apache.jena.rdfxml.xmlinput
    include_package org.apache.jena.rdfxml.impl
    include_package org.apache.jena.xmlinput.states
    include_package org.apache.jena.xmloutput
    include_package org.apache.jena.xmloutput.impl
  end

  module Listener
    include_package org.apache.jena.rdf.listeners
  end

  module Datatypes
    include_package org.apache.jena.datatypes

    module XSD
      include_package org.apache.jena.xsd
      include_package org.apache.jena.xsd.impl
    end
  end

  module Enhanced
    include_package org.apache.jena.enhanced
  end

  module Graph
    include_package org.apache.jena.graph
    include_package org.apache.jena.graph.compose
    include_package org.apache.jena.graph.impl
  end

  module Mem
    include_package org.apache.jena.mem
  end

  module Util
    include_package org.apache.jena.util
    include_package org.apache.jena.util.iterator
  end

  module Shared
    include_package org.apache.jena.shared
    include_package org.apache.jena.shared.impl
    include_package org.apache.jena.shared.uuid
  end

  module Vocab
    include_package org.apache.jena.vocabulary
  end

  module Query
    include_package org.apache.jena.query
  end

  module Ontology
    include_package org.apache.jena.ontology
    include_package org.apache.jena.ontology.impl
  end

  module TDB
    include_package org.apache.jena.tdb
  end

  module Reasoner
    include_package org.apache.jena.reasoner
    include_package org.apache.jena.reasoner.rulesys
    include_package org.apache.jena.reasoner.rulesys.builtins
    include_package org.apache.jena.reasoner.rulesys.impl
    include_package org.apache.jena.reasoner.transitiveReasoner
  end

  module Assembler
    include_package org.apache.jena.assembler
    include_package org.apache.jena.assembler.assemblers

    module Exceptions
      include_package org.apache.jena.assembler.exceptions
    end
  end

  module System
    include_package org.apache.system
  end
end

%w[
  version
  utils
  query_utils
  node_utils
  statement_utils
  namespace
].each {|f| require "jena_jruby/#{f}"}
