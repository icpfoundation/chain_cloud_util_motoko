
import Principal "mo:base/Principal";
import Nat "mo:base/Nat";
module {
    
    public type metaData = {
        canister:Principal;
        caller:Principal;
        cycle:Nat;
        method_name:Text;
        transaction_time:Nat;
        stable_size:Nat;
        memo:Text;
    };

    public type Result = {
         #Ok : ();
        #Err: Text;
    };

}