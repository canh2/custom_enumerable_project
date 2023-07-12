module Enumerable
  # Your code goes here
  def my_each_with_index
    index=0
    for i in self
      yield i , index
      index+=1
    end
  end
 
  def my_select
    arr = Array.new
    for i in self
      arr << i  if yield(i) 
    end
    arr
  end
  def my_all?(&block)
    for i in self
      if !yield(i)
        return false
      end
    end
    return true
  end
  def my_any?
    bol = false
    for i in self
      if yield(i)
        bol =true
      end
    end
    bol
  end
  def my_none?
   bol = true
    for i in self
      if yield(i)
        bol = false
      end
    end
    bol
   
   end 

  def my_count 
     count =0
    if block_given?
      for i in self
        if yield(i)
          count+=1
        end
      end
    else 
    
      for i in self
        count+=1
      end
     
    end 
    count
  end

  def my_map
    new_arr = []
    for i in self
       new_arr << yield(i) 
    end
    new_arr
   end

   def my_inject(initial_value)
      sum= initial_value
      for i in self
        sum = yield(sum,i)
      end
      sum
  end
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each
   for i in self
    yield i
   end

  end

end
