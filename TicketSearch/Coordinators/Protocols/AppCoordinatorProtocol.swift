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
    
//    func start()
//    func auth()
//    func showMain()
}

protocol AppInput: AnyObject { }

protocol AppOutput: AnyObject { }
