

# Nadra Contract

It is a contract in which details about a person are stored in Ethereum Blockchain. This detail can be later on viewed.

## Installation

Use the package manager [npm](https://docs.npmjs.com/) to install hardhat.

```bash
npm install hardhat
```
```bash
npx hardhat
```
Intall hardhat tool box
```bash
npm install @nomicfoundation/hardhat-toolbox
```


## Usage
In ./scripts/deploy.js file
```python
const hre = require("hardhat");
```
In config.js file
```python
require("@nomicfoundation/hardhat-toolbox");
```

    
## Deploying the contract

To deploy, run the following command

```bash
  npx hardhat compile
```
Run a hardhat node in different  terminal using following code.

```bash
  npx hardhat node
```
Deploy the contract in first terminal as
```bash
 npx hardhat run --network localhost scripts/deploy.js
```

    
## Running Tests

To run tests, run the following command.

Run a hardhat node in different  terminal using following code.

```bash
  npx hardhat node
```
Run the hard hatconsole in first terminal
```bash
  npx hardhat console --network localhost
```
Now run the test scipt as
```bash
  const Nadra= await ethers.getContractFactory('Nadra');
```

```bash
const nadra = await Nadra.attach(' "write your deployed contract address here"');
```
```bash
await nadra.addNadraDetails("name",id,cnicNumber,familyTree,addr);
```
Access the get function using
```bash
await nadra.allNadraDetails();
```


## License
[MIT](https://choosealicense.com/licenses/mit/)
