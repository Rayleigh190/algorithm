var N = 1260
let coins = [500, 100, 50, 10]
var count = 0

for coin in coins {
  count += N/coin
  N = N%coin
}

print(count)