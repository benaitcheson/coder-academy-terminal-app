class Pantry

  # define attributes
  attr_reader :name, :file_path, :list
  
  def initialize(name)
    @name = name
    @file_path = "#{name}.txt"
    @list = []
  end

  # method to view a list of the pantry items
  def view
    puts "View #{@name}'s Pantry items:"

    if file_exist?
      unless file_empty?
        File.open(@file_path, 'r') do |file|
          file.each_line do |line|
            puts "#{file.lineno}. #{line}"
          end
        end
      else
        puts "Your file is empty."
      end
    else
      create
    end
  end

  def add
  # check whether the file exists and read into an array, otherwise create a new file
    system 'clear'
    puts  "Add an item to the pantry:"
    puts
    print "> "
    task = gets.strip
    @list = file_to_array(@file_path)
    # add the task to the array
    @list << task
    # write the contents of the array back into the file
    array_to_file(@list)
    puts "Succes!"
  end

  def remove
    system 'clear'
    puts "Remove an item from your pantry:"
    @list = file_to_array(@file_path)
    view
    puts "Enter the item number:"
    print "> "
    task_no = gets.to_i - 1
    @list.delete_at task_no
    puts "Awesome!"
    array_to_file(@list)
  end

  def file_empty?
    File.zero?(@file_path)
  end

  def file_exist?
    File.exist?(@file_path)
  end

  def create
    puts "Your file is empty."
    file = File.new(@file_path, 'w')
    file.close
  end

  def file_to_array(path) 
  # read file content into an array
    array = []
    if file_exist?
      File.open(path, 'r') do |file|
        file.each_line do |line|
          array << line.strip
        end
      end
    else
      create
    end
    array
  end # file_to_array

  def array_to_file(array)
    File.open(@file_path, 'w') do |file|
      array.each do |line|
        file.puts line
      end
    end
  end
end