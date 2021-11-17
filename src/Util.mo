
import Principal "mo:base/Principal";
import Types "./types";
module {
    public type eventCanister = actor {
        createEvent:(metadata : Types.metaData) -> async Types.Result;
    };
    
    public func createEvent(meta:Types.metaData) : async Types.Result {
    let  eventActor : eventCanister = actor("rrkah-fqaaa-aaaaa-aaaaq-cai");
    return  await eventActor.createEvent(meta);
    };
}
