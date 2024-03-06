//
//  AppDelegate.swift
//  DecorationBuilder
//
//  Created by Charles Kerr on 3/3/24.
//

import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {



    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        var decoration = Decoration()
        decoration.primitives.append(Primitive()) ;
        
        let encoder = JSONEncoder()
        encoder.outputFormatting = .prettyPrinted


        let data = try! encoder.encode(decoration)
        print(String(data: data, encoding: .utf8)!)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    func applicationSupportsSecureRestorableState(_ app: NSApplication) -> Bool {
        return true
    }


}

