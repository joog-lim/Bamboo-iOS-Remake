//
//  HomeFlow.swift
//  bamboo-iOS
//
//  Created by Ji-hoon Ahn on 2022/05/18.
//

import UIKit

import RxFlow
import RxRelay
import BamBooSetting
import PanModal

struct HomeStepper: Stepper {
    let steps: PublishRelay<Step> = .init()
    
    var initialStep: Step {
        return BambooStep.HomeIsRequired
    }
}

final class HomeFlow : Flow{
    //MARK: - Properties
    var root: Presentable {
        return self.rootViewController
    }
    private let rootViewController = UINavigationController()
    let stepper: HomeStepper = .init()

    deinit {
        print("\(type(of: self)): \(#function)")
    }
    
    func navigate(to step: Step) -> FlowContributors {
        guard let step = step.asBambooStep else {return .none}
        switch step{
        case .HomeIsRequired :
            return coordinatorToHome()
        case .ReportModalIsRequired:
            return coordinatorToReportModal()
        case .dismiss:
            return dismiss()
        default: return .none
        }
    }
}

//MARK: - Method
private extension HomeFlow {
    func coordinatorToHome() -> FlowContributors{
        let vc = AppDelegate.container.resolve(HomeViewController.self)!
        self.rootViewController.setViewControllers([vc], animated: true)
        return .one(flowContributor: .contribute(withNextPresentable: vc,withNextStepper: vc.reactor!))
    }
    func coordinatorToReportModal() -> FlowContributors{
        let vc = AppDelegate.container.resolve(ReportModalViewController.self)!
        self.rootViewController.visibleViewController?.presentPanModal(vc)
        return .one(flowContributor: .contribute(withNextPresentable: vc,withNextStepper: vc.reactor!))
    }
    func dismiss() -> FlowContributors{
        self.rootViewController.visibleViewController?.dismiss(animated: true)
        return  .none
    }
}
