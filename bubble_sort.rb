#!/bin/ruby

class Sort
  def self.bubble_sort(a)
      swapped = true
      swaps = 0
      n = a.size
      while swapped do
          swapped = false
          (1..n-1).each do |i|
              if a[i-1] > a[i]
                  swapped = true
                  swaps += 1
                  a[i-1], a[i] = a[i], a[i-1]
              end
          end
      end
      a
  end
end

sorted = Sort.bubble_sort([5, 9, 8, 4]])
puts "First Element: #{sorted[0]}"
puts "Last Element: #{sorted[n-1]}"
