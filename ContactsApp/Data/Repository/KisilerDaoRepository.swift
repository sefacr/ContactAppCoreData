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
        let person = ContactModel(context: context) // yetki gibi düşünülebilir
        person.person_name = name
        person.person_phoneNumber = phoneNumber
        
        appDelegate.saveContext()
    }
    
    func update(person: ContactModel, kisi_ad: String, kisi_tel: String){
        person.person_name = kisi_ad
        person.person_phoneNumber = kisi_tel
        
        appDelegate.saveContext()
        
    }
    
    func search(searchText: String){
        do {
            let fr = ContactModel.fetchRequest()
            fr.predicate = NSPredicate(format: "person_name CONTAINS[x] %@",searchText)
            let list = try context.fetch(fr)
            contactsList.onNext(list)
        }catch{
            print(error.localizedDescription)
        }
        
    }
    
    func delete(person:ContactModel) {
        context.delete(person)
        appDelegate.saveContext()
    }
    
    func uploadContacts(){
        do {
            let list = try context.fetch(ContactModel.fetchRequest())
            contactsList.onNext(list)
        }catch{
            print(error.localizedDescription)
        }
        
    }
}
