use core::traits::Into;
use option::OptionTrait;
use ec::{
    ec_neg, ec_point_from_x_nz, ec_point_is_zero,
    ec_point_try_new_nz, ec_point_unwrap,
    ec_point_zero, ec_state_add_mul, ec_state_add, ec_state_init,
    ec_state_try_finalize_nz
};

#[contract]
mod zkProver4337 {
    #[external]
    fn main() -> felt252 {
        // let n = 10;
        // let result = fib(1, 1, n);
        // result
        let message_hash = 0x503f4bea29baee10b22a7f10bdc82dda071c977c1f25b8f3973d34e6b03b2c;
        let public_key = 0x7b7454acbe7845da996377f85eb0892044d75ae95d04d3325a391951f35d2ec;
        let signature_r = 0xbe96d72eb4f94078192c2e84d5230cde2a70f4b45c8797e2c907acff5060bb;
        let signature_s = 0x677ae6bba6daf00d2631fab14c8acf24be6579f9d9e98f67aa7f2770e57a1f5;

        assert(ecdsa::check_ecdsa_signature(:message_hash, :public_key, :signature_r, :signature_s),'ecdsa returned false');

        1
    }
}