require 'grape'
Dir["./api/*.rb"].each {|file| require file }

run API::Root
