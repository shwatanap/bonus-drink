# recursive solution
class BonusDrink
	def self.total_count_for(amount)
		bonus_drink_cnt = amount / 3
		remaining_drink_cnt = amount % 3
		drank_drink_cnt = amount - remaining_drink_cnt

		if bonus_drink_cnt < 1 then
			return amount
		end
		return self.total_count_for(bonus_drink_cnt + remaining_drink_cnt) + drank_drink_cnt
	end
end

# iterative solution
# class BonusDrink
# 	def self.total_count_for(amount)
# 		drank_drink_cnt = 0
# 		remaining_drink_cnt = amount

# 		while remaining_drink_cnt != 0 do
# 			if drank_drink_cnt % 3 == 2
# 				drank_drink_cnt += 1
# 				next
# 			end
# 			drank_drink_cnt += 1
# 			remaining_drink_cnt -= 1
# 		end
# 	return drank_drink_cnt
# 	end
# end
