//
//  SwiftUIView.swift
//  swiftUItest
//
//  Created by Bryan on 2021/11/23.
//

import SwiftUI

struct Contact: Identifiable{
    var id = UUID()
    var firstName:String
    var lastName:String
}

class ContactsListViewModel:ObservableObject{
    @Published var contacts : [Contact] = [
        Contact(firstName: "japp", lastName: "Cook")
    ]
    func fetchContacts(){
        
    }
}

struct SwiftUIView: View {
    
    @ObservedObject var viewModel = ContactsListViewModel()
    
    var body: some View {
        NavigationView{
            VStack{
                List(viewModel.contacts){contacts in
                    Text("\(contacts.firstName)\(contacts.lastName)")
                }
            }
            .navigationTitle("contacts")
            .navigationBarItems( trailing: Button(action: {
                
                    // go fetch
                viewModel.fetchContacts()
                
            }, label: {
                Text("Refresh")
            }))

        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
