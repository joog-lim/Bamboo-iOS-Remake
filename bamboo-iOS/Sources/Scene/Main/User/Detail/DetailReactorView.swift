//
//  DetailReactorView.swift
//  bamboo-iOS
//
//  Created by Ji-hoon Ahn on 2022/05/18.
//

import Foundation
import ReactorKit
import RxSwift
import RxRelay
import RxFlow

final class DetailReactor: Reactor ,Stepper{
    
    var steps: PublishRelay<Step> = .init()
    private let disposeBag: DisposeBag = .init()
    
    //MARK: - Reactor
    enum Action {
        // actiom cases
    }
    
    enum Mutation {
        // mutation cases
    }
    
    struct State {
        //state
    }
    
    let initialState: State
    
    init() {
        self.initialState = State()
    }

}

//MARK: - Mutate
extension DetailReactor {
    func mutate(action: Action) -> Observable<Mutation> {
        // switch action {
        // }
    }
}

//MARK: - reduce
extension DetailReactor {
    func reduce(state: State, mutation: Mutation) -> State {
        let newState = state
        // switch mutation {
        // }
        return newState
    }
}
