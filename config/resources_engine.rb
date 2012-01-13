resource_alias :long_process, ::Qor::Job::Worker


mount :at => "/admin" do
  theme :tis
  resource_list :earthquake, :region, :long_process

  resource :earthquake do
    edit_attrs :src, :regions
    meta :regions, :type => :select_many, :collection => lambda{|a| Region.all }
  end

  resource :long_process do
    theme :job

    filter :running do |scoped, app|
      scoped.where(:status => "running")
    end
    filter :done do |scoped, app|
      scoped.where(:status => "done")
    end
    filter :exception do |scoped, app|
      scoped.where(:status => "exception")
    end

  end


end
