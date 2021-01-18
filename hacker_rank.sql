
# Ollivander's Inventory
select w.id, wp.age, w.coins_needed, w.power
from wands w
join wands_property wp on w.code = wp.code
where wp.is_evil = 0
AND coins_needed = (SELECT MIN(coins_needed) FROM Wands WHERE code = w.code AND power = w.power)
order by w.power desc, wp.age desc;