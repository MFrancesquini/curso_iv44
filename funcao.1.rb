def caesar_cipher(phrase, cripto)
    
    alfa = [*'a'..'z']
    key=0    
    size = phrase.length
    cripto_phrase=[]

    while size > 0
       up=false
       
       if  phrase[key]==phrase[key].upcase
           get_letter = phrase[key].downcase
           up=true
       else 
           get_letter = phrase[key]
       end    
       key_key=0

       alfa.each do |item|
             
             if key_key+cripto>alfa.length
                key_key=0
             end

             if item==get_letter

                if up==true
                   cripto_phrase << alfa[key_key+cripto].upcase
                else
                   cripto_phrase << alfa[key_key+cripto]
                end

                key_key=0
                break                 
                
             end  

             key_key=key_key+1

       end     
       key=key+1
       size=size-1
       
       
    end

    print cripto_phrase

end

caesar_cipher('AaaaBc!',2) 
