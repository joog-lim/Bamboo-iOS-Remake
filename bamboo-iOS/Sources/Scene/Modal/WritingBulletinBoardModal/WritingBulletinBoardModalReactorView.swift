//
//  WritingBulletinBoardModalReactor.swift
//  bamboo-iOS
//
//  Created by Ji-hoon Ahn on 2022/05/19.
//

import Foundation
import ReactorKit
import RxSwift
import RxFlow
import RxRelay

final class WritingBulletinBoardModalReactor: Reactor , Stepper{
    
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
extension WritingBulletinBoardModalReactor {
    func mutate(action: Action) -> Observable<Mutation> {
        // switch action {
        // }
    }
}

//MARK: - reduce
extension WritingBulletinBoardModalReactor {
    func reduce(state: State, mutation: Mutation) -> State {
        var newState = state
        // switch mutation {
        // }
        return newState
    }
}
