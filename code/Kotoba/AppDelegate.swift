//
//  AppDelegate.swift
//  Kotoba
//
//  Created by Will Hains on 2014-11-24.
//  Copyright (c) 2014 Will Hains. All rights reserved.
//

import UIKit
import Sesame

// Theme colour for app icon and tint
let redThemeColour = UIColor(hue: 5.0, saturation: 0.73, brightness: 0.65, alpha: 1.0)

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate
{
	var window: UIWindow?
	
	func application(
		_ application: UIApplication,
		didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil)
		-> Bool
	{
		// Reset user defaults for UI tests
		if ProcessInfo.processInfo.arguments.contains("UITEST")
		{
			prefs.reset()
			words.clear()
		}
		
		// Set tint colour to match icon
		UIView.appearance().tintColor = redThemeColour

        Sesame.shared = .init(
            appId: SesameProperties.file.appId,
            auth: SesameProperties.file.auth,
            versionId: SesameProperties.file.versionId,
            userId: SesameProperties.file.userId
        )
        
		return true
	}
}
