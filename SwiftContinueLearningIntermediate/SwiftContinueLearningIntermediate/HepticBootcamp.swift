//
//  HepticBootcamp.swift
//  SwiftContinueLearningIntermediate
//
//  Created by Muzaffar on 04/10/22.
//

import SwiftUI

class HepticManager {
    
    static let sharedManager = HepticManager()
    
    func notification(type: UINotificationFeedbackGenerator.FeedbackType ) {
        let generator = UINotificationFeedbackGenerator()
        generator.notificationOccurred(type)
    }
    
    func impact(style: UIImpactFeedbackGenerator.FeedbackStyle) {
        let generator = UIImpactFeedbackGenerator()
        generator.impactOccurred()
    }
}


struct HepticBootcamp: View {
    
    var body: some View {
        VStack (spacing:20){
            Button("Error1") { HepticManager.sharedManager.notification(type:.error)}
            Button("Success") { HepticManager.sharedManager.notification(type:.success)}
            Button("Warning") { HepticManager.sharedManager.notification(type:.warning)}
            Divider()
            Button("Soft") { HepticManager.sharedManager.impact(style:.soft)}
            Button("Light") { HepticManager.sharedManager.impact(style:.light)}
            Button("Medium") { HepticManager.sharedManager.impact(style:.medium)}
            Button("Rigid") { HepticManager.sharedManager.impact(style:.rigid)}
            Button("Heavy") { HepticManager.sharedManager.impact(style:.heavy)}
        }
    }
}

struct HepticBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        HepticBootcamp()
    }
}
