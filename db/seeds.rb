# Engineers
Engineer.find_or_create_by(name: 'John', email: 'john@email.com', tag: 'gray')
Engineer.find_or_create_by(name: 'Bairon', email: 'bairon@email.com', tag: 'blue')
Engineer.find_or_create_by(name: 'Yeidy', email: 'yeidy@email.com', tag: 'orange')

# Services
Service.find_or_create_by(
  name: 'Search Routes',
  client: 'Recorrido',
  description: 'Recorrido is a bus travel search website, which allows the user to compare the prices 
  and schedules of the major bus operators in Chile'
)
Service.find_or_create_by(
  name: 'Advanced Calculations',
  client: 'IngeTech',
  description: 'Advanced engineering calculations for different areas'
)

# Contracts
Contract.find_or_create_by(service_id: Service.first.id)
Contract.find_or_create_by(service_id: Service.second.id)

# Monitoring Schedules Service Recorrido
MonitoringSchedule.find_or_create_by(contract_id: Contract.first.id, day: 'monday', start_time: 8,  end_time: 15)
MonitoringSchedule.find_or_create_by(contract_id: Contract.first.id, day: 'tuesday', start_time: 8,  end_time: 15)
MonitoringSchedule.find_or_create_by(contract_id: Contract.first.id, day: 'wednesday', start_time: 6,  end_time: 17)
MonitoringSchedule.find_or_create_by(contract_id: Contract.first.id, day: 'thursday', start_time: 8,  end_time: 15)
MonitoringSchedule.find_or_create_by(contract_id: Contract.first.id, day: 'friday', start_time: 8,  end_time: 15)
MonitoringSchedule.find_or_create_by(contract_id: Contract.first.id, day: 'saturday', start_time: 12,  end_time: 23)
MonitoringSchedule.find_or_create_by(contract_id: Contract.first.id, day: 'sunday', start_time: 10,  end_time: 20)
# Monitoring Schedules Service Advanced Calculations
MonitoringSchedule.find_or_create_by(contract_id: Contract.second.id, day: 'monday', start_time: 6,  end_time: 18)
MonitoringSchedule.find_or_create_by(contract_id: Contract.second.id, day: 'wednesday', start_time: 6,  end_time: 18)
MonitoringSchedule.find_or_create_by(contract_id: Contract.second.id, day: 'friday', start_time: 9,  end_time: 17)
MonitoringSchedule.find_or_create_by(contract_id: Contract.second.id, day: 'saturday', start_time: 9,  end_time: 14)
MonitoringSchedule.find_or_create_by(contract_id: Contract.second.id, day: 'sunday', start_time: 9,  end_time: 14)

# Availabilities John
Availability.find_or_create_by(engineer_id: Engineer.first.id, day: 'monday', week: 20, year: 2024,  start_time: 6, end_time: 18, available: true)
Availability.find_or_create_by(engineer_id: Engineer.first.id, day: 'tuesday', week: 20, year: 2024,  start_time: 6, end_time: 18, available: true)
Availability.find_or_create_by(engineer_id: Engineer.first.id, day: 'wednesday', week: 20, year: 2024,  start_time: 6, end_time: 18, available: true)
Availability.find_or_create_by(engineer_id: Engineer.first.id, day: 'thursday', week: 20, year: 2024,  start_time: 6, end_time: 18, available: true)
Availability.find_or_create_by(engineer_id: Engineer.first.id, day: 'friday', week: 20, year: 2024,  start_time: 6, end_time: 18, available: true)
Availability.find_or_create_by(engineer_id: Engineer.first.id, day: 'saturday', week: 20, year: 2024,  start_time: 8, end_time: 14, available: true)
Availability.find_or_create_by(engineer_id: Engineer.first.id, day: 'sunday', week: 20, year: 2024,  start_time: 8, end_time: 14, available: true)
# Availabilities Bairon
Availability.find_or_create_by(engineer_id: Engineer.second.id, day: 'monday', week: 20, year: 2024,  start_time: 12, end_time: 23, available: true)
Availability.find_or_create_by(engineer_id: Engineer.second.id, day: 'tuesday', week: 20, year: 2024,  start_time: 12, end_time: 23, available: true)
Availability.find_or_create_by(engineer_id: Engineer.second.id, day: 'wednesday', week: 20, year: 2024,  start_time: 12, end_time: 23, available: true)
Availability.find_or_create_by(engineer_id: Engineer.second.id, day: 'thursday', week: 20, year: 2024,  start_time: 12, end_time: 23, available: true)
Availability.find_or_create_by(engineer_id: Engineer.second.id, day: 'friday', week: 20, year: 2024,  start_time: 12, end_time: 23, available: true)
Availability.find_or_create_by(engineer_id: Engineer.second.id, day: 'saturday', week: 20, year: 2024,  start_time: 12, end_time: 22, available: true)
Availability.find_or_create_by(engineer_id: Engineer.second.id, day: 'sunday', week: 20, year: 2024,  start_time: 10, end_time: 17, available: true)
# Availabilities Yeidy
Availability.find_or_create_by(engineer_id: Engineer.third.id, day: 'monday', week: 20, year: 2024,  start_time: '9:00:00', end_time: 17, available: true)
Availability.find_or_create_by(engineer_id: Engineer.third.id, day: 'tuesday', week: 20, year: 2024,  start_time: 8, end_time: '20:00:00', available: true)
Availability.find_or_create_by(engineer_id: Engineer.third.id, day: 'wednesday', week: 20, year: 2024,  start_time: '9:00:00', end_time: 17, available: true)
Availability.find_or_create_by(engineer_id: Engineer.third.id, day: 'thursday', week: 20, year: 2024,  start_time: 8, end_time: '20:00:00', available: true)
Availability.find_or_create_by(engineer_id: Engineer.third.id, day: 'friday', week: 20, year: 2024,  start_time: '9:00:00', end_time: 17, available: true)
Availability.find_or_create_by(engineer_id: Engineer.third.id, day: 'saturday', week: 20, year: 2024,  start_time: 14, end_time: '00:00:00', available: true)
Availability.find_or_create_by(engineer_id: Engineer.third.id, day: 'sunday', week: 20, year: 2024,  start_time: 14, end_time: '00:00:00', available: true)

# Shifts
date = Date.commercial(2024, 20, 1) + 10.hours
Shift.find_or_create_by(engineer_id: Engineer.first.id, service_id: Service.first.id, hour: date)

# Notes
Note.find_or_create_by(engineer_id: Engineer.first.id, shift_id: Shift.first.id, message: 'High memory consumption is observed ')
