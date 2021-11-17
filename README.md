# chain_cloud_util_motoko
## take care
  Note that at present, event canisters do not exist on the main network, and will be deployed on the main network soon. Please pay continuous attention
## How to use
1.  Vessel installation:  https://github.com/dfinity/vessel  
2.  Modify the vessel.dhall file  
    {  
        dependencies = [ "base","chain_cloud_util_motoko"],  
        compiler = None Text  
    }  

3.  Modify the additions in the package-set.dhall file  
    let additions = [  
    { name = "chain_cloud_util_motoko",    
      repo = "https://github.com/icpfoundation/chain_cloud_util_motoko",   
      version = "v0.1.0",    
      dependencies = [ "base" ]  
    },  
    ] : List Package  

## example  
    import Principal "mo:base/Principal";
    import Util  "mo:chain_cloud_util_motoko/Util";
    import Types "mo:chain_cloud_util_motoko/Types";
    import D "mo:base/Debug";
    actor class Example() = this {
        public shared(msg) func mint() : async () {
        let canisterId = Principal.fromActor(this);
        let res:Types.Result = await Util.createEvent(msg,"mint","mint",canisterId);
        };
    };

