//
//  AlertBootcamp.swift
//  SwiftUITutorial
//
//  Created by Mohammad.Parvez on 26/08/22.
//

import SwiftUI

struct AlertBootcamp: View {

    @State var showAlert: Bool = false
    @State var backgroundColour : Color = Color.yellow
    
    @State var alertTitle: String = ""
    @State var alertMessage : String = ""
    
    
    @State var alertType : AlertError? = nil
    
    enum AlertError {
        case success
        case error
    }
    
    var body: some View {
        
        ZStack {
            
            backgroundColour.edgesIgnoringSafeArea(.all)
            VStack (spacing: 20){
                
                Button(action: {
                    
                    alertType = .error
                    alertTitle = "Error while uploding video"
                    alertMessage = "Video should not be uploaded"
                    showAlert.toggle()
                }, label: {
                    Text("Video upload")
                })
                
                Button(action: {
                    
                    alertType = .success
                    alertTitle = "Error while uploding Image"
                    alertMessage = "Image should not be uploaded 😁"
                    showAlert.toggle()
                }, label: {
                    Text("Image upload")
                })
                
            }
            .alert(isPresented: $showAlert, content: {
                
                getAlert()
                //Alert(title: Text("First alert in Swift UI"))
            })
        }
    }
    
    func getAlert() -> Alert {
        
        switch alertType {
        case .error : return Alert(title: Text("Error"), message: Text("There  is a Error"), dismissButton: .cancel())
        case .success : return Alert(
            title: Text(alertTitle),
            message: Text(alertMessage),
            primaryButton: .destructive(Text("Ok"),action: {
                
                backgroundColour = .red
            }),
            secondaryButton: .cancel())
        default: return Alert(title: Text("Error"))
        }
        
        
//        return Alert(
//            title: Text(alertTitle),
//            message: Text(alertMessage),
//            primaryButton: .destructive(Text("Ok"),action: {
//
//                backgroundColour = .red
//            }),
//            secondaryButton: .cancel())
        
        
//        return Alert(
//            title: Text("Newtwork Error"),
//            message: Text("Please check your internet"),
//            primaryButton: .destructive(Text("Ok"),action: {
//
//                backgroundColour = .red
//            }),
//            secondaryButton: .cancel())

    }
}

struct AlertBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AlertBootcamp()
    }
}
