class Ip < ApplicationRecord
  belongs_to :use
  # La siguiente sentencia por medio de expresiones regulares valida q el numero ingresado sea una IP valida
  validates :ip, format: { with: /(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)/, message: "Ingrese una direccion IP Valida" }
end
