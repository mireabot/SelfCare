//
//  FirebaseModel.swift
//  SelfCare
//
//  Created by Mikhail Kolkov  on 04.08.2021.
//

import Foundation
import Firebase



class AccountViewModel: NSObject,ObservableObject {

    @Published var users: [User] = []
    
    
    func RegisterUser(name: String, weight: String, height: String, email: String, birthday: String){
        
        let db = Firestore.firestore()
        
        db.collection("Users").document(Auth.auth().currentUser!.uid).setData([
        
            "FullName": name,
            "Weight": weight,
            "Height": height,
            "Email": email,
            "Birthday": birthday
            
        ]) { (err) in
            
            if err != nil{
                
                return
            }
        }
    }
    
    func fetchUsers(){
            
            let db = Firestore.firestore()
            
            db.collection("Users").getDocuments { (snap, err) in
                
                guard let itemData = snap else{return}
                
                self.users = itemData.documents.compactMap({ (doc) -> User? in
                    
                    let id = doc.documentID
                    let name = doc.get("FullName") as! String
                    let email = doc.get("Email") as! String
                    let weight = doc.get("Weight") as! String
                    let height = doc.get("Height") as! String
                    let birthday = doc.get("Birthday") as! String
                    
                    return User(id: id, name: name, email: email, weight: weight, height: height, date: birthday)
                    
                })
            }
    }
}

