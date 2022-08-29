//
//  ActionSheetBootcamp.swift
//  SwiftUITutorial
//
//  Created by Mohammad.Parvez on 26/08/22.
//

import SwiftUI

struct ActionSheetBootcamp: View {
    
    @State var isSheetPresented : Bool = false
    @State var actionsheetOption: ActionSheetOption = .isOtherPost
    
    enum ActionSheetOption {
        
        case isMyPost
        case isOtherPost
    }
    
    var body: some View {
        
        VStack {
            HStack {
                Circle()
                    .frame(width: 30, height: 30)
                Text("@username")
                Spacer()
                Button(action: {
                    actionsheetOption = .isOtherPost
                    isSheetPresented.toggle()
                }, label: {
                    Image(systemName: "ellipsis")
                })
                    .accentColor(.primary)
            }
            .padding(.horizontal)
            
            Rectangle()
                .aspectRatio(1.0, contentMode: .fit)
        }
//        .actionSheet(isPresented:$isSheetPresented , content: {
//            getActionSheet()
//
//        } )
        .actionSheet(isPresented:$isSheetPresented , content: getActionSheet)
    }
    
    func getActionSheet() -> ActionSheet {
        
        
        let shareButton: ActionSheet.Button = .default(Text("Share")) {
          // action code here
        }
        let deleteButton: ActionSheet.Button = .destructive(Text("Share")) {
            // action code here
        }

        let reportButton: ActionSheet.Button = .destructive(Text("Report")) {
            // action code here
        }
        let cancelButton : ActionSheet.Button = .cancel()

        switch actionsheetOption {
            
        case .isOtherPost: return ActionSheet(title: Text("Other Post"), message: Text("Select any of these"), buttons: [shareButton,reportButton,cancelButton])
        case .isMyPost: return ActionSheet(title: Text("Other Post"), message: Text("Select any of these"), buttons: [shareButton,deleteButton,reportButton,cancelButton])

        }
        
        
//        let button1: ActionSheet.Button = .default(Text("Like"))
//        let button2: ActionSheet.Button = .default(Text("Share"))
//        let button3: ActionSheet.Button = .default(Text("Comment"))
//        let button4: ActionSheet.Button = .default(Text("Delete"))
//        let button5: ActionSheet.Button = .default(Text("Save"))
//        let button6: ActionSheet.Button = .default(Text("Report"))
//        let button7: ActionSheet.Button = .destructive(Text("Ignore"))
//        let button8: ActionSheet.Button = .cancel()
        
        //return ActionSheet(title: Text("Actionsheet"), message: Text("This is action 1"), buttons: [button1,button2,button3,button4,button5,button6,button7,button8])
    }
}

struct ActionSheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetBootcamp()
    }
}
