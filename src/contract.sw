contract;

use std::chain::*;
use std::hash::*;
use std::storage::*;

use crate::greeter::*;

///////////////////////////////////
//    Contract Implementation    //
///////////////////////////////////

impl Greeter for Contract {
    fn gm(gas: u64, coins_to_forward: u64, asset_id: b256, req: GreeterMessage) -> Greeting {
        if Greeting::GM = req.type {
          if let String::from("gm") = req.text {
            return Greeting::GM;
          } else {
            panic(420);
          }
        } else {
          panic(69);
        }
    }

    fn gn(gas: u64, coins_to_forward: u64, asset_id: b256, req: GreeterMessage) -> Greeting {
      if Greeting::GN = req.type {
          if let String::from("gn") = req.text {
            return Greeting::GN;
          } else {
            panic(420);
          }
        } else {
          panic(69);
        }
    };
}