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
            
        db.collection("Users").addSnapshotListener { (snap, err) in
                
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

class MedcineOperationModel : NSObject, ObservableObject {
    
    @Published var medcines: [MedcineModel] = []
    
    func addMedcine(medcineName: String, category: String, reminder: String){
        let db = Firestore.firestore()
        
        db.collection("MedcinesList").document(randomString(length: 20)).setData([
        
            "MedcineName": medcineName,
            "UserID": UserDefaults.standard.string(forKey: "UserID") ?? "",
            "Category": category,
            "Reminder": reminder
            
        ]) { (err) in
            
            if err != nil{
                
                return
            }
        }
        print("MedcineAdd")
    }
    func randomString(length: Int) -> String {
      let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
      print( String((0..<length).map{ _ in letters.randomElement()! }))
        return String((0..<length).map{ _ in letters.randomElement()! })
    }
    
    func fetchMedcine(){
        
        let db = Firestore.firestore()
            
        db.collection("MedcinesList").addSnapshotListener { (snap, err) in
                
                guard let itemData = snap else{return}
                
                self.medcines = itemData.documents.compactMap({ (doc) -> MedcineModel? in
                    
                    let id = doc.documentID
                    let name = doc.get("MedcineName") as! String
                    let userID = doc.get("UserID") as! String
                    let category = doc.get("Category") as! String
                    let reminder = doc.get("Reminder") as! String
                    
                    return MedcineModel(id: id, reminder: reminder, name: name, category: category, userID: userID)
                    
                })
            }
    }
}
