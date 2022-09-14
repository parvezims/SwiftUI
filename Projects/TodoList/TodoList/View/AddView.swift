//
//  AddView.swift
//  TodoList
//
//  Created by Mohammad.Parvez on 03/09/22.
//

import SwiftUI

struct AddView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var listViewmodel: ListViewModel
    @State var textFieldText : String = ""
    @State var alertTitle : String = ""
    @State var showAlert : Bool = false
    var body: some View {
        ScrollView {
            
            VStack {
                
                TextField("Type something here...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height:55)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
                
                Button(action: {
                    saveButtonPressed()
                }, label: {
                    
                    Text("Save")
                        .frame(height:55)
                        .frame(maxWidth:.infinity)
                        .foregroundColor(.white)
                        .font(.headline)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                })
            }
            .padding(15)
        }
        .navigationTitle("Add new Item  🖊")
        .alert(isPresented: $showAlert, content: getAlert )
    }
    
    func saveButtonPressed(){
        
        if validateText() {
            listViewmodel.addItem(textFieldText)
            presentationMode.wrappedValue.dismiss()
        }
    }
    
    func validateText() -> Bool {
        
        if textFieldText.count > 3 {
            return true
        }
        else {
            alertTitle = "Item should be bigger in length"
            showAlert.toggle()
            return false
        }
    }
    
    func getAlert() -> Alert {
        return Alert(title: Text(alertTitle))
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        
        Group {
            NavigationView {
                AddView()
            }
            .preferredColorScheme(.dark)
        .environmentObject(ListViewModel() )
            NavigationView {
                AddView()
            }
            .preferredColorScheme(.light)
            .environmentObject(ListViewModel() )
        }
    }
}
