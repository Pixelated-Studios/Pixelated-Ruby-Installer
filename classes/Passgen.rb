#!/bin/ruby
# frozen_string_literal: true

# This class will generate and encrypt a password for a new user
# This class is currently unused. It's just here for future use
class Passgen
  ### BEGIN PASSWORD GENERATOR ###
  def do_create_user(no, us, pw)
    pwd = pw.crypt('$5$a1')
    1.upto(no) do |x|
      uname = us + x.to_s
      result = system("useradd -m -p '#{pwd}' #{uname}")
      if result
        puts "#{uname} created!"
      else
        puts "#{uname} failed!"
      end
    end
  end
end
### END PASSWORD GENERATOR ###
