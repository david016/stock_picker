def stock_picker(arr)
    difference =0
    index_to_buy=0
    index_to_sell=0
    arr.each_with_index do |item, indx| 
        for i in (indx+1..arr.length-1)
            if arr[i]-item > difference
                difference =arr[i]-item
                index_to_buy = indx
                index_to_sell = i
            end
        end
    end
    result=[index_to_buy,index_to_sell]
    p result
end

stock_picker([17,3,6,9,15,8,6,1,10])