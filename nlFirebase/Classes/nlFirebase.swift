//
//  nlFirebase.swift
//  nlFirebase
//
//  Created by Gagan on 02/03/18.
//  Copyright © 2018 Neural Labs. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabaseUI
import FirebaseAuthUI

public class nlFirebase: NSObject {

    static let shared : nlFirebase = nlFirebase();
    private var admob : AdMob? = nil;
    private var inapp : InAppPurchases? = nil;
    
    
    public func initialize() {
        
        nlLogs.shared.log(msg: "Initializing nlFirebase");
        
        admob = AdMob();
        inapp = InAppPurchases();
        
        admob?.initialize();
        inapp?.initialize();
    }
}
