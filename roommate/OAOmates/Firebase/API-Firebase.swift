//
//  API-Firebase.swift
//  OAOmates
//
//  Created by linc on 2020/01/27.
//  Copyright © 2020 linc. All rights reserved.
//

import Foundation
import FirebaseFirestore

extension API {
    private var userDocumentRef: CollectionReference {
        return Firestore.firestore().collection("Room")
    }
    
    func addUser(user:Room, completion: (() -> Void)?) {
        if let data = try? user.asDictionary() {
            self.userDocumentRef.addDocument(data: data, completion: { _ in
                completion?()
            })
        }
    }
    
    func allUsers(completion: (([Room]) -> Void)?) {
        let decoder = DictionaryDecoder()
        var users:[Room] = []
        self.userDocumentRef.addSnapshotListener { (snapshot, error) in
            if error == nil, let documents = snapshot?.documents {
                for document in documents {
                    if let user = try? decoder.decode(Room.self, from: document.data()) {
                        print(user)
                        users.append(user)
                    }
                }
                completion?(users)
            }
        }
    }
}