//
//  ReportModalReactor.swift
//  bamboo-iOS
//
//  Created by Ji-hoon Ahn on 2022/05/19.
//

import Foundation
import ReactorKit
import RxSwift
import RxRelay
import RxFlow

final class ReportModalReactor: Reactor, Stepper {
    
    var steps: PublishRelay<Step> = .init()
    private let disposeBag: DisposeBag = .init()
    
    //MARK: - Reactor
    enum Action {
        case reportButtonDidTap
    }
    
    enum Mutation {
        
    }
    
    struct State {
        
    }
    
    let initialState: State
    
    init() {
        self.initialState = State()
        // init state initialState = State(...)
    }

}

//MARK: - Mutate
extension ReportModalReactor {
    func mutate(action: Action) -> Observable<Mutation> {
         switch action {
         case .reportButtonDidTap:
             steps.accept(BambooStep.dismiss)
             return .empty()
         }
    }
}

//MARK: - reduce
extension ReportModalReactor {
    func reduce(state: State, mutation: Mutation) -> State {
        let newState = state
        // switch mutation {
        // }
        return newState
    }
}
