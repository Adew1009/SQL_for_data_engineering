select name, description,
price,
case
 when price<100 then 'Cheap'
 when price >100 and price <500 then 'Affordable'
 else 'Expensive'
 End as ProductType

from products

Case expression used to evaluate a list of conditions and return a result 