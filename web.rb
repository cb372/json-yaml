require 'sinatra'
require 'yaml'
require 'json'

get '/' do
  JSON.dump({
    'routes' => [
      'POST /json/to/yaml',
      'POST /yaml/to/json'
    ]
  })
end

post '/json/to/yaml' do
  request.body.rewind
  begin
    data = JSON.parse request.body.read
  rescue
    halt 400, "that ain't json"
  end
  [
    200,
    { 'Content-Type' => 'text/yaml' },
    data.to_yaml
  ]
end

post '/yaml/to/json' do
  request.body.rewind
  begin
    data = YAML.load request.body.read
  rescue
    halt 400, "that ain't yaml"
  end
  [
    200,
    { 'Content-Type' => 'application/json' },
    data.to_json
  ]
end
