require_relative 'db_connection'
require 'active_support/inflector'
# NB: the attr_accessor we wrote in phase 0 is NOT used in the rest
# of this project. It was only a warm up.
require 'byebug'
class SQLObject
  def self.columns
   array= DBConnection.execute2(<<-SQL)
    SELECT 
    *
    FROM
    #{table_name}

    SQL
    debugger
    @columns = array.first.map do |ele| 
      ele.to_sym
    end
  end

  def self.finalize!
  end
  
  def self.table_name=(table_name)
    @table_name = table_name
    
  end

  def self.table_name
    whatever= "#{self}".downcase 
    @table_name = whatever.tableize
  end

  def self.all
    # ...
  end

  def self.parse_all(results)
    # ...
  end

  def self.find(id)
    # ...
  end

  def initialize(params = {})
    # ...
  end

  def attributes
    # ...
  end

  def attribute_values
    # ...
  end

  def insert
    # ...
  end

  def update
    # ...
  end

  def save
    # ...
  end
end
