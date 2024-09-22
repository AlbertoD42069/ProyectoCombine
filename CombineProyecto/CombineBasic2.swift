//
//  CombineBasic2.swift
//  CombineProyecto
//
//  Created by Jesus Alberto Diaz Dominguez on 21/09/24.
//

import UIKit
import Combine

struct Weater {
    let weatherPublisher = PassthroughSubject<Int, Error>()
    
    func getWaterInfo(){
        weatherPublisher.send(230)
        weatherPublisher.send(231)
    }
}
class CombineBasicTwo: UIView {
    
    var weater = Weater()

    override init(frame: CGRect) {
        super.init(frame: frame)
        df()

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func df(){
        let wetarer = weater.weatherPublisher
        wetarer.sink { completion in
            print("completion \(completion)")
            print("sd")
        } receiveValue: { value in
            print("value")
        }
        weater.getWaterInfo()
    }

}
