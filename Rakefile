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
task :postroot do
  sh "curl -X POST -v -d 'ignored data' localhost:9292"
end

desc "make a post /chuchu request via curl"
task :post do
  sh "curl -X POST --trace - -d 'a=Casiano+Rodriguez&b=a+%2B+b+%3D%3D+13%25' localhost:9292/chuchu"
#a = Casiano Rodriguez
#b = a + b == 13%
end

desc "make a put / request via curl"
task :put do
  sh "curl -X PUT -v localhost:9292"
end

desc "make a DELETE / request via curl"
task :delete do
  sh "curl -X DELETE -v localhost:9292"
end

desc "make a get /name request via curl"
task :getname, :name do |t,h|
  name = h[:name] or 'pepe'
  sh "curl -v localhost:9292/#{name}"
end

desc "make a get /name/appellido request via curl"
task :getfullname, :name, :apellido do |t,h|
  name = h[:name] or 'pepe'
  apellido = h[:apellido] or 'rodriguez'
  sh "curl -v localhost:9292/#{name}/#{apellido}"
end

task :html do
  sh "kramdown README.md > README.html"
end
