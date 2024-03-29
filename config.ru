require 'rack'
require 'rack/contrib/try_static'

# enable compression
use Rack::Deflater

# static configuration (file path matches request path)
use Rack::TryStatic,
      :root => '_site',  # static files root dir
      :urls => %w[/],    # match all requests
      :try => ['.html', 'index.html', '/index.html'], # try these postfixes sequentially
      :gzip => true,     # enable compressed files
      :header_rules => [
        [:all, {'Cache-Control' => 'public, max-age=0'}],
        [['css', 'js'], {'Cache-Control' => 'public, max-age=0'}]
      ]

# otherwise 404 NotFound
notFoundPage = File.open('_site/index.html').read
run lambda { |_| [200, {'Content-Type' => 'text/html'}, [notFoundPage]]}
