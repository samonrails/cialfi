def custom_sort(array)
    return [] if array.length == 0
    pivot = array.shift
    less, more = array.partition {|e| e < pivot }
    custom_sort(less) + [pivot] + custom_sort(more)
end

def custom_flat(array)
    return [] if array.length == 0
    array.each_with_object([]) do |el, res|
        res.push *(el.is_a?(Array) ? custom_flat(el) : el)
    end
end

def make_flat(array)
    custom_sort(custom_flat(array))
end
