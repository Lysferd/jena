
module Jena::Model::Sta

  ESPACE_CHAR = "\s"

  #alias old_get_local_name get_local_name
  def formatted_name
    return self.get_local_name.gsub /_/, ESPACE_CHAR
  end

end
