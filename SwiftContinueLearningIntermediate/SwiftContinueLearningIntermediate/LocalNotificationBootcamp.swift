//
//  LocalNotification.swift
//  SwiftContinueLearningIntermediate
//
//  Created by Muzaffar on 05/10/22.
//

import SwiftUI
import UserNotifications
import CoreLocation

class NotificationManager {
    
    static let manager = NotificationManager()
    func requestAuthorization() {
        
        let option: UNAuthorizationOptions = [.alert, .sound, .badge]
        UNUserNotificationCenter.current().requestAuthorization(options: option) { success, error in
            
            if let error = error {
                print("Error \(error.localizedDescription)")
            }
            else {
                print("Success")
            }
        }
    }
    
    func scheduleNotification() {
        let content = UNMutableNotificationContent()
        content.title = "This is first local Notification"
        content.subtitle = "This was so easy"
        content.sound = .default
        content.badge = 1
        
        // time
        //let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5.0, repeats: false )
        // calendar
        
//        var dateComponent = DateComponents()
//        dateComponent.hour = 11
//        dateComponent.minute = 32
//        let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponent, repeats: false)
        // location
        let coordinate = CLLocationCoordinate2D(latitude: 27.2046, longitude: 77.4977)
        let region = CLCircularRegion(center: coordinate, radius: 100 , identifier: UUID().uuidString )
        region.notifyOnEntry = true
        region.notifyOnExit = false
        
        let trigger = UNLocationNotificationTrigger(
            region: region,
            repeats: false)
        
        let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
        UNUserNotificationCenter.current().add(request)
    }
    
    func cancelNotification() {
        UNUserNotificationCenter.current().removeAllDeliveredNotifications()
        UNUserNotificationCenter.current().removeAllPendingNotificationRequests()
    }
}

struct LocalNotificationBootcamp: View {
    var body: some View {
        
        VStack (spacing: 40) {
            Button("Request Permission") {
                NotificationManager.manager.requestAuthorization()
            }
            Button("Schedule Notification") {
                NotificationManager.manager.scheduleNotification ()
            }
            Button("Cancel Notification") {
                NotificationManager.manager.cancelNotification()
            }
        }
        .onAppear {
            UIApplication.shared.applicationIconBadgeNumber = 0
        }
    }
}

struct LocalNotificationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        LocalNotificationBootcamp()
    }
}
