use core::felt252;

#[starknet::interface]
trait IFibonacci<TContractState> {
    fn main(ref self: TContractState, x: felt252) -> felt252;
    // fn get(self: @TContractState) -> u128;
}


#[starknet::contract]
mod Fibonacci {

    #[storage]
    struct Storage {
        stored_data: u128
    }

    #[external(v0)]
    impl Fibonacci of super::IFibonacci<ContractState> {
        fn main(ref self: ContractState, x: felt252) -> felt252 {
            let n = 10;
            let result = fib(1, 1, n);
            result
        }
    }

    fn fib(a: felt252, b: felt252, n: felt252) -> felt252 {
        match n {
            0 => a,
            _ => fib(b, a + b, n - 1),
        }
    }
}
