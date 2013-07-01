task :default => :server

desc "run server"
task :server do
  sh "rackup"
end

desc "make a get / request via curl"
task :get do
  sh "curl -v localhost:9292"
end

desc "make a post / request via curl"
task :post do
  sh "curl -X POST -v -d 'ignored data' localhost:9292"
end

desc "make a put / request via curl"
task :put do
  sh "curl -X PUT -v localhost:9292"
end

desc "make a DELETE / request via curl"
task :delete do
  sh "curl -X DELETE -v localhost:9292"
end

desc "make a get /pepe request via curl"
task :getname, :name do |t,h|
  puts h.inspect
  name = h[:name] or 'pepe'
  sh "curl -v localhost:9292/#{name}"
end

