class EmployeeFilter

  def initialize(employees)
    @employees = employees
  end

  def started_before_2006
    @employees.select {|em| em[:start_date].year < 2006}
  end

  def all_with_start_date
    @employees.map do |em|
      "#{em[:first_name]} #{em[:last_name]} (#{em[:title]}) - #{em[:start_date].strftime('%-m/%-d/%Y')}"
    end
  end


end