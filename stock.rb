def stock_picker(array)
    
    days=[]
    array.each_with_index do |element,index|

        if array[index]==array.min
            days << index            
        end 

        if array[index]==array.max
            days << index            
        end 

        
    end
    puts days
end

stock_picker([17,3,6,9,15,8,6,1,10])