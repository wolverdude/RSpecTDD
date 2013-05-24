class Array
  def my_uniq
    uniq_arr = []
    each do |el|
      uniq_arr << el unless uniq_arr.include?(el)
    end
    uniq_arr
  end

  def two_sum
    sum_indices = []
    size.times do |i1|
      size.times do |i2|
        next if i1 >= i2

        sum_indices << [i1, i2] if self[i1] + self[i2] == 0
      end
    end
    sum_indices
  end

  def my_transpose
    return [[]] if first.empty?

    trans_arr = Array.new(first.size) { [] }
    each_with_index do |row, row_idx|
      row.each_with_index do |el, col_idx|
        trans_arr[col_idx] << el
      end
    end

    trans_arr
  end

  def stock_picker
    return if size < 2
    best_pair = [0,1]
    best_profit = self[1] - self[0]

    each_index do |day1|
      each_index do |day2|
        next if day1 >= day2

        profit = self[day2] - self[day1]
        if profit > best_profit
          best_profit = profit
          best_pair = [day1, day2]
        end
      end
    end

    best_pair
  end
end