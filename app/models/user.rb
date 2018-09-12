class User < ApplicationRecord
  # Cifrado de la contraseña del usuario
  has_secure_password validations: false
end
