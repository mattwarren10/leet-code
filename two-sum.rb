=begin
	
Given an array of integers, return indices of the two numbers such that they add up to a specific target.

You may assume that each input would have exactly one solution, and you may not use the same element twice.

Example:
Given nums = [2, 7, 11, 15], target = 9,

Because nums[0] + nums[1] = 2 + 7 = 9,
return [0, 1].
	
=end

def two_sum
	indicies = []
	potential_num = 0
	target = 9
	nums = [2, 7, 11, 15]
	if nums.include?(target)
		indicies[target]
	else
		nums.index(nums[-1]).downto(0) do |n|
			if n < target
				potential_num = nums.index(n)
				diff = target - n
				if nums.include?(diff)
					diff = nums.index(diff)
					indicies.push(potential_num, diff)
					break					
				end
			end
		end
	end
	p indicies
end

two_sum