exchange :earthquake_csv, :main_resource => :earthquake do

  resource :earthquake do
    finder do |scoped, hash_data|
      scoped.where(:eqid => hash_data[:eqid])
    end

  end

  resource :region do
    finder do |scoped, hash_data|
      scoped.where(:name => hash_data[:region_name])
    end
  end

  column 'Src',                 :property => :src
  column 'Eqid',                 :property => :eqid, :alias_headers => ["Earthquake ID"]
  column 'Version',                 :property => :version
  column 'Datetime',                 :property => :happend_at
  column 'Lat',                 :property => :lat
  column 'Lon',                 :property => :lon
  column 'Magnitude',                 :property => :magnitude
  column 'Depth',                 :property => :depth
  column 'NST',                 :property => :nst
  column 'Region',                 :property => [:regions, :name], :multi_delimiter => ","

end
