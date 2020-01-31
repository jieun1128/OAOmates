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
//    func userDocumentRef(name : String) -> CollectionReference{
//        return Firestore.firestore().collection("\(name)")
//    }
    //    data: data, completion: { _ in
    //        completion?()
    //    }
    //completion: (() -> Void)?
    func addPersonalInfo(name: String, user:Person) {
        if let data = try? user.asDictionary() {
            self.userDocumentRef.document(
                "\(name)").collection("PersonalInfo").document().setData(data)
            //            self.userDocumentRef.document("\(name)").collection("PersonalInfo").document().setData(data)
        }
    }
    
    func addSurveyResult(name: String, user: Survey){
        if let data = try? user.asDictionary(){
            self.userDocumentRef.document(
            "SurveyInfo").setData(data)
        }
    }
    
    func allUsers(completion: (([Person]) -> Void)?) {
        let decoder = DictionaryDecoder()
        var users:[Person] = []
        self.userDocumentRef.document("남연진").collection("PersonalInfo").addSnapshotListener { (snapshot, error) in
            if error == nil, let documents = snapshot?.documents {
                for document in documents {
                    if let user = try? decoder.decode(Person.self, from: document.data()) {
                        print(user)
                        users.append(user)
                    }
                }
                completion?(users)
            }
        }
    }
    func allSurveyUsers(completion: (([Survey])->Void)?){
        let decoder = DictionaryDecoder()
        var users: [Survey] = []

        self.userDocumentRef.document("홍길현").collection("SurveyInfo").addSnapshotListener{
            (snapshot, error) in
            if error == nil, let documents = snapshot?.documents {
                for document in documents {
                    if let user = try? decoder.decode(Survey.self, from: document.data()){
                        print(user)
                        users.append(user)
                    }
                }
                completion?(users)
            }
        }
    }
}
