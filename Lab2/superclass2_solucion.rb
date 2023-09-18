# frozen_string_literal: true

class Estatus
  def self.for(status_string)
    case status_string #estatus.for(tarea.estatus).cadena_estados
    when "realizado" then DoneStatus.new
    when "iniciado" then StartedStatus.new
    when "no iniciado" then DefinedStatus.new
    end
  end

  def done?
    false
  end
  def cadena_estados
    raise NotImplementedError
  end
end

class DoneStatus < Estatus
  def to_s
    "Realizado"
  end
  def done?
    true
  end
  def cadena_estados
    "Yo soy yo"
  end

end

class StartedStatus < Estatus
  def to_s
    "No se ha realizado"
  end
  def done?
    true
  end
  def cadena_estados
    "Yo soy yo"
  end
end

class DefinedStatus < Estatus
  def to_s
    "Ni siquiera ha empezado"
  end
  def done?
    true
  end
  def cadena_estados
    "Yo soy yo"
  end
end

estatus_realizado = Estatus.for("realizado")
estatus_iniciado = Estatus.for("iniciado")
estatus_no_iniciado = Estatus.for("no iniciado")

puts estatus_realizado.to_s
puts estatus_iniciado.to_s
puts estatus_no_iniciado.to_s