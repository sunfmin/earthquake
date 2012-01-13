job :import_earthquake do
  inputs do
    meta :csv_file, :type => :file, :label => "Excel or CSV file"
    meta :name, :type => :string, :label => "Name"
  end

  worker do |w|

    file = w.inputs(:csv_file)

    eq_exchanger = Qor::Exchange.exchanger(:earthquake_csv)

    objects_hash, errors = eq_exchanger.import(file, {:name => w.inputs(:name)}) do |objects_hash, hash_data, errors|
      w.exchange_hash_data_row(hash_data, errors)
      w.progress(hash_data.line_no, hash_data.total_count)
      message = "%s/%s: %s" % [hash_data.line_no, hash_data.total_count, hash_data[:eqid]]
      w.status_text("Importing #{message}")
      w.log message
    end

  end

end
