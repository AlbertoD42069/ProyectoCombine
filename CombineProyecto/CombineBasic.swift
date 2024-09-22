//
//  CombineBasic.swift
//  CombineProyecto
//
//  Created by Jesus Alberto Diaz Dominguez on 21/09/24.
//

import UIKit
import Combine


class Contenido {
    var numero = 0
}

class CombineBasic: UIView {
    
    let array = ["1","2","3","4","5","6"]
    let justPublisher = Just(200)
    var contenido = Contenido()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        sucribeArray()
        assigSuscribeArray()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func sucribeArray(){
        let suscribe = array.publisher
        suscribe.sink { isFinish in
            print("ha finalizado: \(isFinish)")
        } receiveValue: { value in
            print("valores: \(value)")
        }
        
    }
    func assigSuscribeArray(){
        let assing = justPublisher.assign(to: \Contenido.numero, on: contenido)
        print(justPublisher)
        print(contenido.numero)
        
    }
}
