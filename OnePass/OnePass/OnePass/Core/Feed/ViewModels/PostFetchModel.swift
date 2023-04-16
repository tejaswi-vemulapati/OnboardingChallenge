//
//  PostFetchModel.swift
//  OnePass
//
//  Created by Dax Patel on 4/16/23.
//

import Foundation
import Firebase

class PostFetchModel: ObservableObject {
    @Published var list = [Posts]()
    

    func updateData(entryToUpdate: Posts, text: String) {
        //entry to update will be the document to grab?
        let db = Firestore.firestore()
        
        //here we call the document instead of doing an addDocument methods
        //the we set its data with .setData method
        //merege will update, if we dont add merge specifer it will delete than add the data
        db.collection("Posts").document(entryToUpdate.id).setData(["text":text], merge: true) { error in
            
            //if no error
            if error == nil {
                self.getData()
            }
            else {
                print(error)
            }
            
        }
        //notice the entryToUpdate.id --> the .id tells it to update the Document with this id
        //how does it know which id? --> when we tap on the entry we want to update in the app, it will automatticly take that one
    }
    
    func addData(text: String) {

        //get a refrance to the database
        let db = Firestore.firestore()
        
        db.collection("Posts").addDocument(data: ["text":text,"image":"none"]) { error in
            
            if error == nil {
                self.getData()
                
            }
            else {
                //handel error
            }
            
        }

    }
    
    
    func getData() {
        //get a refrance to the database
        let db = Firestore.firestore()
        //view the documents
        db.collection("Posts").getDocuments { snapshot, error in
            //check for errr
            if error == nil {
                if let snapshot = snapshot {
                    
                    DispatchQueue.main.async {
                        self.list = snapshot.documents.map { d in
                            return Posts(id:d.documentID,
                                         image:d["image"] as? String ?? "",
                                         text:d["text"] as? String ?? "")
                        }
                    }
                }
            }
            //handel errors
            print(error)
        }
    }
}
