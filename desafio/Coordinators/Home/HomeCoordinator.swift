//
//  HomeCoordinator.swift
//  desafio
//
//  Created by Andre Dias on 15/07/23.
//

import UIKit

final class HomeCoordinator: Coordinator {
    
    private(set) var childCoordinators: [Coordinator] = []
    private let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let apiService = MarvelAPIService(serviceManager: NetworkManager.shared)
        let homeViewModel = HomeViewModel(apiService: apiService)
        let homeViewController = HomeViewController(viewModel: homeViewModel)
        self.navigationController.setViewControllers([homeViewController], animated: false)
    }

}
