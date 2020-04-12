class User < ApplicationRecord
    validates :nome, presence: true
    validates :data_nascimento, presence: true
    # validates_format_of :data_nascimento, :with => /\d{2}\/\d{2}\/\d{4}/, :message => "A data deve serguir o formato: dd/mm/yyyy"
end


=begin

# Verificando a validação do objeto User
user = User.new
user.valid?
#=> false
user.errors.full_messages
#=> ["Name can't be blank", "Email can't be blank"]
user = User.new("Phil", "Phil's email")
user.valid?
#=> true

=end