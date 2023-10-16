require 'sqlite3'
require 'active_record'
require 'byebug'


ActiveRecord::Base.establish_connection(:adapter => 'sqlite3', :database => 'customers.sqlite3')
# Mostrar consultas en la consola.
# Comenta esta linea para desactivar la visualización de consultas SQL sin formato.
ActiveRecord::Base.logger = Logger.new(STDOUT)

class Customer < ActiveRecord::Base
  def to_s
    "  [#{id}] #{first} #{last}, <#{email}>, #{birthdate.strftime('%Y-%m-%d')}"
  end

  # NOTA: Cada uno de estos se puede resolver por completo mediante llamadas de ActiveRecord.
  # No deberías necesitar llamar a las funciones de  Ruby para ordenar, filtrar, etc.
  def self.any_candice
    # Tu codigo aqui para devolver todos los clientes cuyo nombre sea Candice
    # probablemente algo asi:  Customer.where(....)
    Customer.where(first: 'Candice')
  end
  def self.with_valid_email
    # Tu codigo aqui para devolver solo clientes con direcciones de correo electronico validas (que contengan '@')
    Customer.where("email LIKE '%@%'")
  end

  def self.with_dot_org_email
    Customer.where("email LIKE '%.org%'")
  end

  def self.with_invalid_email
    Customer.where("email IS NOT NULL AND email NOT LIKE '%@%'")
  end

  def self.with_blank_email
    Customer.where("email IS NULL")
  end

  def self.born_before_1980
    Customer.where("birthdate < '1980-01-01'")
  end

  def self.with_valid_email_and_born_before_1980
    Customer.with_valid_email & Customer.born_before_1980
  end

  def self.last_names_starting_with_b
    Customer.where("last LIKE 'B%'").order(:birthdate)
  end

  def self.twenty_youngest
    Customer.limit(20).order(birthdate: :desc)
  end

  def self.update_gussie_murray_birthdate
    customer = Customer.find_by(first: 'Gussie', last: 'Murray')
    if customer
      customer.update(birthdate: '2004-02-08')
    end
  end

  def self.change_all_invalid_emails_to_blank
    customer = Customer.with_invalid_email
    if customer.any?
      customer.update(email: '')
    end
  end

  def self.delete_meggie_herman
    customer = Customer.find_by(first: 'Meggie', last: 'Herman')
    if customer
      customer.delete
    end
  end

  def self.delete_everyone_born_before_1978
    customer = Customer.where("birthdate < '1977-12-31'")
    if customer.any?
      customer.destroy_all
    end
  end
end
