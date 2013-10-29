Routes
======

In Sinatra, a route is an HTTP method paired with a URL-matching
pattern. Each route is associated with a block

Routes are matched in the order they are defined. The first route
that matches the request is invoked.

Route patterns may include named parameters, accessible via the params hash:

            get '/hello/:name' do
              # matches "GET /hello/foo" and "GET /hello/bar"
              # params[:name] is 'foo' or 'bar'
              "Hello #{params[:name]}!"
            end

You can also access named parameters via block parameters:

            get '/:name' do |name|
              "hello #{name}!"
            end

Route patterns may also include splat (or wildcard) parameters,
accessible via the `params[:splat]` array:

            get '/say/*/to/*' do
              # matches /say/hello/to/world
              params[:splat] # => ["hello", "world"]
            end

            get '/download/*.*' do
              # matches /download/path/to/file.xml
              params[:splat] # => ["path/to/file", "xml"]
            end
