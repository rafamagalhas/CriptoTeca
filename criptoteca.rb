#encoding: utf-8

require File.expand_path('crypto.rb')
require 'rubygems'
require 'sinatra'
require 'sinatra/partial'

set :views, File.dirname(__FILE__) + '/templates'
set :partial_template_engine, :erb

# Encryptation route
get '/:algorithm/encrypt/:message' do |algorithm, message|
  crypto = Crypto.new(algorithm)

  @message = message
  @algorithm = algorithm
  @encrypted_message = crypto.encrypt(message)

  erb :index
end

# Post form routes
["md5", "sha1", "sha256", "sha384", "sha512", "base64"].each do |algorithm|
  post "/#{algorithm}/encrypt/*" do
    redirect "/#{algorithm}/encrypt/#{params["#{algorithm}_encryption"]["message"]}"
  end
end

# Other routes
get '/how-to-use' do
  erb :how_to_use
end

get '/colaborate' do
  erb :colaborate
end

get '/about' do
  erb :about
end

# Default route
get '/' do
  @algorithm = "md5"
  erb :index
end

private
def value_for(algorithm, current, value = "active")
  return value if algorithm == current
end

def is_active?(page)
  return "active" if page == request.path
  return ""
end

def form_input_message(algorithm)
  return "Mensagem a ser codificada" if algorithm == "base64"
  "Mensagem a ser criptografada"
end

def form_output_message(algorithm)
  return "Mensagem codificada" if algorithm == "base64"
  "Mensagem criptografada"
end

def form_button_message(algorithm)
  return "Codificar mensagem" if algorithm == "base64"
  "Criptografar mensagem"
end