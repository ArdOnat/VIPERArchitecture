//
//  VehicleLocationModuleBuilder.swift
//  CaseProject
//
//  Created by Arda Onat on 17.08.2020.
//  Copyright © 2020 Arda Onat. All rights reserved.
//

import UIKit

class VehicleLocationModuleBuilder {
    
    static func createModule() -> UINavigationController {
        let viewController = VehicleLocationViewController()
        let navigationController = UINavigationController(rootViewController: viewController)
        
        let presenter: VehicleLocationViewToPresenterProtocol & VehicleLocationInteractorToPresenterProtocol = VehicleLocationPresenter()
        
        viewController.presenter = presenter
        viewController.presenter?.router = VehicleLocationRouter()
        viewController.presenter?.view = viewController
        viewController.presenter?.interactor = VehicleLocationInteractor()
        viewController.presenter?.interactor?.presenter = presenter
        
        return navigationController
    }
    
}
