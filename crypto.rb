#encoding: utf-8

require 'digest/md5'
require 'base64'

class Crypto
  attr_accessor :type
  
  def initialize(type)
    @type = type
  end

  def encrypt(message)
    return case type
      when "md5" then Digest::MD5.hexdigest message
      when "sha1" then Digest::SHA1.hexdigest message
      when "sha256" then (Digest::SHA256.new << message).hexdigest
      when "sha384" then (Digest::SHA384.new << message).hexdigest
      when "sha512" then (Digest::SHA512.new << message).hexdigest
      when "base64" then Base64.encode64(message).chomp
      else "Criptografia não suportada"
    end
  end

  def decrypt(message)
    return case type
      when "base64" then Base64.decode64(message).chomp
      else "Criptografia não suportada"
    end
  end
end