### How to generate a casm json file?

##  First 

starknet-compile --single-file examples/storage_contract.cairo examples/storage_contract.sierra --replace-ids

## Second 

starknet-sierra-compile -- examples/storage_contract.sierra examples/storage_contract.casm


# Reference

- https://github.com/shramee/starklings-cairo1