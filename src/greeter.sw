library greeter;

/// @title Greeter Library
/// @description Example Library
/// @author velleity.eth <https://github.com/a5f9t4>

/// @dev Temporarily, Sway requires the first three parameters of an ABI method to be
///      - `gas: u64` -> amount of gas
///      - `coins_to_forward: u64` -> amount of tokens
///      - `asset_id: b256` -> asset id of the token
abi Greeter {
    fn gm(gas: u64, coins_to_forward: u64, asset_id: b256, req: GreeterMessage) -> Greeting;
    fn gn(gas: u64, coins_to_forward: u64, asset_id: b256, req: GreeterMessage) -> Greeting;
}

pub enum Greeting {
    GM,
    GN,
}

pub struct GreeterMessage {
    type: Greeting,
    text: String,
}
