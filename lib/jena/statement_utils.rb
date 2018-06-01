
module Jena::Model::Statement

  #alias old_get_local_name get_local_name
  def formatted_name
    return self.get_local_name.gsub /_/, ?\s
  end

end
