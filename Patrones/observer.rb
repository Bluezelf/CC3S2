#Objeto Observado
class Subject
  attr_reader :state

  def initialize
    @observers = []
    @state = nil
  end
  def add_observer(observer)
    @observers << observer
  end

  def remove_observer(observer)
    @observers.delete(observer)
  end

  def notify_observers
    @observers.each {|observer| observer.update(self)}
  end
  def set_state(state)
    @state = state
    notify_observers
  end
end

class Observer
  def update(subject)
    puts "Observador ha sido notificado con un nuevo estado: #{subject.state}"
  end
end

subject = Subject.new

observer1 = Observer.new
observer2 = Observer.new

subject.add_observer(observer1)
subject.add_observer(observer2)

subject.set_state("Estado 1")
subject.set_state("Estado 2")