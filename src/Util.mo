
import Principal "mo:base/Principal";
import ExperimentalCycles "mo:base/ExperimentalCycles";
import Nat "mo:base/Nat";
import Time "mo:base/Time";
import Types "./Types";
import D "mo:base/Debug";
import Prim "mo:prim";

module {
    public type eventCanister = actor {
        createEvent:(metadata : Types.metaData) -> async Types.Result;
    };
    
    public func createEvent(msg:Types.Msg,method_name:Text,memo:Text,canisterId:Principal) : async Types.Result {
    let balance = ExperimentalCycles.balance();
    let size:Nat =  Prim.rts_memory_size();
    let time = Time.now();
    
    let meta:Types.metaData = {
        canister = canisterId;
        caller = msg.caller;
        cycle = balance;
        method_name = method_name;
        transaction_time =Prim.nat64ToNat(Prim.intToNat64Wrap(time)) ;
        stable_size = size;
        memo = memo;
    };
    let  eventActor : eventCanister = actor("rrkah-fqaaa-aaaaa-aaaaq-cai");
    return  await eventActor.createEvent(meta);
    };
}
