# chain_cloud_util_motoko
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

