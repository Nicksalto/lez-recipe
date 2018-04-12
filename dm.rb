require 'dm-core'
require 'dm-migrations'
require 'dm-validations'
require 'dm-timestamps'

DataMapper.setup :default, "sqlite://#{Dir.pwd}/user.db"

class User
  include DataMapper::Resource

  property :id,         Serial
  property :firstname,  String
  property :lastname,   String
  property :email,      String
  property :password,   String
  property :created_at, DateTime
  property :updated_at, DateTime
end

class Message
  include DataMapper::Resource

  property :id,         Serial
  property :firstname,  String
  property :lastname,   String
  property :email,      String
  property :password,   String
  property :created_at, DateTime
  property :updated_at, DateTime
end


DataMapper.auto_upgrade!
