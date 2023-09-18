# frozen_string_literal: true

class Tarea
  @status

  def initialize(NoIniciado)
    @status = NoIniciado
  end
end

class NoIniciado
  "ni siquiera he empezado"
end

class Iniciado < NoIniciado
  "no lo he realizado"
end

class Realizado < Iniciado
  "Lo he realizado"
end

def cadena_estados(tarea)
  case tarea.status
  when "realizado" then "Lo he realizado"
  when "iniciado" then "no lo he realizado"
  when "no iniciado" then "ni siquiera he empezado"
  end
end