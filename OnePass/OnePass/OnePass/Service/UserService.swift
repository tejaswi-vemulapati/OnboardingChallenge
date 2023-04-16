//
//  UserService.swift
//  OnePass
//
//  Created by Dax Patel on 4/16/23.
//

import Firebase

struct UserService {
    
    //maps all data from the database to the user array
    func fetchUsers(completion: @escaping([User]) -> Void) {
        Firestore.firestore().collection("Posts")
            .getDocuments { snapshot, _ in
                guard let documents = snapshot?.documents else {return}
                
                
            }
    }
}
