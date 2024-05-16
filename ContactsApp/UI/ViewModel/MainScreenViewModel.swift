//
//  MainScreenViewModel.swift
//  ContactsApp
//
//  Created by Sefa Acar on 14.05.2024.
//

import Foundation
import RxSwift

class MainScreenViewModel {
    
    var krepo = KisilerDaoRepository()
    var contactsList = BehaviorSubject<[ContactModel]>(value: [ContactModel]())
    
    init(){
        contactsList = krepo.contactsList
    }
    
    func search(searchText: String){
        krepo.search(searchText: searchText)
    }
    
    func delete(person:ContactModel) {
        krepo.delete(person: person)
        uploadContacts()
    }
    
    func uploadContacts(){
        krepo.uploadContacts()
    }
}
