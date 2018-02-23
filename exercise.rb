require 'ap'

rows = [
  [nil, "Pumpkin", nil, nil],
  ["Socks", nil, "Mimi", nil],
  ["Gismo", "Shadow", nil, nil],
  ["Smokey","Toast","Pacha","Mau"]
]

rows.each_with_index do |row, row_number|
  row.each_with_index do |seat, seat_number|
    if seat.nil?
      puts "Row #{row_number + 1} seat #{seat_number + 1} is free. Do you want to sit there? (y/n)"
      answer = gets.chomp
      if answer.downcase == "y"
        puts "What is your name?"
        name = gets.chomp
        rows[row_number][seat_number] = name
        return ap rows
      end
    end
  end
end
