//
//  KisilerDaoRepository.swift
//  ContactsApp
//
//  Created by Sefa Acar on 14.05.2024.
//

import Foundation
import RxSwift
import CoreData


class KisilerDaoRepository {
    
    var contactsList = BehaviorSubject<[ContactModel]>(value: [ContactModel]())
    
    let context = appDelegate.persistentContainer.viewContext
    
    func save(name: String, phoneNumber: String){
        
        
    }
    
    func update(person: ContactModel, kisi_ad: String, kisi_tel: String){
        
    }
    
    func search(searchText: String){
        
    }
    
    func delete(person:ContactModel) {
        
    }
    
    func uploadContacts(){
        
        //contactsList.onNext(list)
    }
}
