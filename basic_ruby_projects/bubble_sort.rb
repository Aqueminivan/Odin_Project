def bubble_sort(array_to_sort)
    array_is_sorted = false
    until array_is_sorted
        swap_was_performed = false
        array_to_sort.each_with_index do |current_item, i|
            if array_to_sort[i + 1] != nil
                if current_item > array_to_sort[i + 1]
                    swap_left_and_right_array_values(i, array_to_sort)
                    swap_was_performed = true
                end
            end
        end
        unless swap_was_performed
            array_is_sorted = true
        end
    end
    return array_to_sort
end

def swap_left_and_right_array_values(index, array)
    temp = array[index]
    array[index] = array[index + 1]
    array[index + 1] = temp
end

pp bubble_sort([4,3,78,2,0,2])
pp bubble_sort([5,1,4,2,8])
pp bubble_sort([3, 6, 20, 18, 6, 7, 9, 10, 4, 30, 75, 48])
pp bubble_sort([12,4,8,2,15,13,1])