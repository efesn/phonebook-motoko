import Map "mo:base/HashMap";
import Text "mo:base/Text";

// acator -> canister -> smart contract

actor {

  // Motoko -> type language

  type Name = Text;
  type Phone = Text;

  type Entry = {
    desc: Text;
    phone: Phone;
  };

  // variables
    // let -> immutable 
    // var -> mutable 

  let phonebook = Map.HashMap<Name, Entry>(0, Text.equal, Text.hash);

  //functions
    // query -> sorgu
    // update -> güncellemek

    public func insert(name: Name, entry: Entry) : async () {
      phonebook.put(name, entry);
    };

    public query func lookup(name: Name) : async ?Entry {
      // ? ne olursa olsun geri döndür anlamına geliyor
      phonebook.get(name) // return phonebook.get(name);
    }
}