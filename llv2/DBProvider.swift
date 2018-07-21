//
//  DBProvider.swift
//  
//
//  Created by 林蔼欣 on 2018-07-19.
//

import Foundation
import FirebaseDatabase
import FirebaseStorage

protocol FetchData: class {
    func dataReceived(contacts: [Contact]);
}

class DBProvider {
    
    private static let _instance = DBProvider();
    
    weak var delegate: FetchData?;
    //weak：用之前不初始化
    
    private init(){}
    
    static var Instance: DBProvider {
        return _instance;
    }
    
    var dbRef: DatabaseReference {
        return Database.database().reference();
    }
    
    var contactsRef: DatabaseReference {
        return dbRef.child(Constants.CONTACTS);
    }
    
    var messagesRef: DatabaseReference {
        return dbRef.child(Constants.MESSAGES);
    }
    
    var mediaMessagesRef: DatabaseReference {
        return dbRef.child(Constants.MEDIA_MESSAGES)
    }
    
    var storageRef: StorageReference {
        return Sorage.storage().reference(forURL: "网址")
    }
    
    var imageStorageRef: StorageReference {
        return imageStorageRef.child(Constants.IMAGE_STORAGE);
    }
    
    var videoStorageRef: StorageReference {
        return storageRef.child(Constants.VIDEO_STORAGE);
    }

    func saveUser(withID: String, email: String, password: String) {
        let data: Dictionary<String, Any> = [Constants.EMAIL: email, Constants.PASSWORD: password];
        contactsRef.child(withID).serValue(data);
    }
    
    func getContacts() -> [Contact] {
        //var con = [Contact]();
        contactsRef.observeSingleEvent(of: DataEvenType.value) {
            (snapshot: DataSnapshot) in
            
            var contacts = [Contacts]();
            
            if let myContacts = snapshot.value as? NSDictionary {
                for (key, value) in myContacts {
                    if let contactData = value as? NSDictionary {
                        if let email = contactData[Constants.EMAIL] as? String {
                            let id = key as! String;
                            let newContact = Contact(id: id, name: email);
                            //con.append(newContact)
                            contacts.append(newContact);
                        }
                    }
                }
            }
            self.delegate?.dataReceived(contacts: contacts);
        }
        //return con
    }
}
