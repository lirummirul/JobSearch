//
//  AppCoordinatorProtocol.swift
//  JobSearch
//
//  Created by Lambert Lani on 5/28/24.
//

import Foundation

protocol AppCoordinatorProtocol : AnyObject {
    var tabCoordinator : Tab { get set }
    
    init()
    
    func navigateToTab(_ tab: Tab)
    
//    func start()
//    func auth()
//    func showMain()
}

protocol AppInput: AnyObject {
    func signLoginSuccessfully()
}

protocol AppOutput: AnyObject { }
