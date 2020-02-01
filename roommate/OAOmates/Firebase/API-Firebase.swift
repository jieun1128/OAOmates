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
        return Firestore.firestore().collection("User")
    }
    private var surveyrDocumentRef: CollectionReference {
        return Firestore.firestore().collection("Survey")
    }
//    func userDocumentRef(name : String) -> CollectionReference{
//        return Firestore.firestore().collection("\(name)")
//    }
    //    data: data, completion: { _ in
    //        completion?()
    //    }
    //completion: (() -> Void)?
    func addPersonalInfo(user:Person) {
        if let data = try? user.asDictionary() {
            var inputData = data
            inputData["userId"] = self.userId
            self.userDocumentRef.document(userId).setData(inputData)
        }
    }
    
    func getUserInfo(userId:String, completion: ((Person) -> Void)?) {
        let decoder = DictionaryDecoder()
        self.userDocumentRef.document(userId).addSnapshotListener { (snapshot, error) in
            do {
                if let data = snapshot?.data() {
                    let user = try decoder.decode(Person.self, from: data)
                    completion?(user)
                }
            } catch {
                print(error)
            }
        }
    }
    
    func getMyInfo(completion: ((Person) -> Void)?) {
        let decoder = DictionaryDecoder()
        self.userDocumentRef.document(self.userId).addSnapshotListener { (snapshot, error) in
            do {
                if let data = snapshot?.data() {
                    let user = try decoder.decode(Person.self, from: data)
                    completion?(user)
                }
            } catch {
                print(error)
            }
        }
    }
    
    func getSurveyInfo(userId:String, completion: ((Survey) -> Void)?) {
        let decoder = DictionaryDecoder()
        self.surveyrDocumentRef.document(userId).addSnapshotListener { (snapshot, error) in
            do {
                if let data = snapshot?.data() {
                    let user = try decoder.decode(Survey.self, from: data)
                    completion?(user)
                }
            } catch {
                print(error)
            }
        }
    }
    
    func getMySurvey(completion: ((Survey) -> Void)?) {
        let decoder = DictionaryDecoder()
        self.surveyrDocumentRef.document(self.userId).addSnapshotListener { (snapshot, error) in
            do {
                if let data = snapshot?.data() {
                    let user = try decoder.decode(Survey.self, from: data)
                    completion?(user)
                }
            } catch {
                print(error)
            }
        }
    } 
    
    func addSurveyResult(user: Survey){
        if let data = try? user.asDictionary(){
            var inputData = data
            inputData["userId"] = self.userId
            self.surveyrDocumentRef.document(userId).setData(inputData)
        }
    }
    
    func allUsers(completion: (([Person]) -> Void)?) {
        let decoder = DictionaryDecoder()
        var users:[Person] = []
        
        self.userDocumentRef.addSnapshotListener { snapshot, error in
            if let error = error {
                print(error)
            }
            if let documents = snapshot?.documents {
                for document in documents {
                    do {
                        let user = try decoder.decode(Person.self, from: document.data())
                        print(user)
                        users.append(user)
                    } catch {
                        print(error)
                    }
                }
                completion?(users)
            }
        }
    }
    func allSurveys(completion: (([Survey])->Void)?){
        let decoder = DictionaryDecoder()
        var surveys: [Survey] = []

        self.surveyrDocumentRef.addSnapshotListener{
            (snapshot, error) in
            if error == nil, let documents = snapshot?.documents {
                for document in documents {
                    if let survey = try? decoder.decode(Survey.self, from: document.data()){
                        surveys.append(survey)
                    }
                }
                completion?(surveys)
            }
        }
    }
}
