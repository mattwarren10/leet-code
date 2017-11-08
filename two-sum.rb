=begin
	
Given an array of integers, return indices of the two numbers such that they add up to a specific target.

You may assume that each input would have exactly one solution, and you may not use the same element twice.

Example:
Given nums = [2, 7, 11, 15], target = 9,

Because nums[0] + nums[1] = 2 + 7 = 9,
return [0, 1].
	
=end

def iterate(first, last)
	
end

def two_sum(left, right)
	target = 9
	nums = [2, 7, 11, 15]
	mid = (nums.last/2).floor
	indicies = []	
	if mid < target
		right = nums.index(mid) - 1
		arr = iterate(left, right)
	elsif mid == target
		indices = [mid]
	else
		first = nums.index(mid)
		arr = iterate(left, right)
	end
	diff = target - last

	puts indices
end

left = nums.first
right = nums.last

two_sum(left, right)