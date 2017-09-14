require 'erb' #clase de ruby que ya viene instalada
require 'httparty' #gem downloaded and installed


class Application
  def self.call(env)
    if env['PATH_INFO'] == '/' #si la URL del cliente viene vacia, regresa http200
      url =  'http://jsonplaceholder.typicode.com/posts'
      response = HTTParty.get(url)
      #response.body #we need the body of the response
      #we need to parse the format to Json and save it in a Class variable posts
      @posts = JSON.parse(response.body)
      body = ERB.new(File.read('index2.html.erb'))
      #HTTP status, headers in hash, body
      [200, {}, [body.result(binding)]]
    else
      [404, {}, ['This page does not exist MUAHAHAHAHAHA']]
    end
  end
end
