//
//  DetailViewModel.swift
//  ContactsApp
//
//  Created by Sefa Acar on 14.05.2024.
//

import Foundation

class DetailViewModel {
    var krepo = KisilerDaoRepository()
    
    func update(person: ContactModel, kisi_ad: String, kisi_tel: String){
        krepo.update(person: person, kisi_ad: kisi_ad, kisi_tel: kisi_tel)
    }
    
}
