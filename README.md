### How to generate a casm json file?

cairo compile version : 
- https://github.com/starkware-libs/cairo/tree/v1.1.0

##  First 

starknet-compile examples/storage_contract.cairo examples/storage_contract.sierra --replace-ids

## Second 

starknet-sierra-compile examples/storage_contract.sierra examples/storage_contract.casm


# Reference

- https://github.com/shramee/starklings-cairo1