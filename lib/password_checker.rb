class PasswordChecker
  def check(password)
    if password.to_s != password
      password = password.to_s
    end

    if password.length >= 8
      return true
    else
      fail "Invalid password, must be 8+ characters."
    end
  end
end