//
//  masa.swift
//  PizzaRica
//
//  Created by Jose Lopez on 8/11/17.
//  Copyright © 2017 Jose Lopez. All rights reserved.
//

import Foundation
import UIKit

class tipoMasa : UIViewController {
    
    var datosTamanho : String = ""
    var masa : String = ""
    
    @IBOutlet weak var masaButtom: UIButton!
    @IBOutlet weak var tipoMasa: UILabel!
    @IBAction func delgadaButtom(_ sender: UIButton) {
        masa = "Masa Delgada"
        mostrarMasa()
    
        
        
    }
    
    @IBAction func crujienteButtom(_ sender: UIButton) {
        masa = "Masa Crujiente"
        mostrarMasa()
    }
    
    @IBAction func gruesaButtom(_ sender: UIButton) {
        masa = "Masa Gruesa"
        mostrarMasa()
    }
    
    func mostrarMasa() {
        tipoMasa.text = masa
        masaButtom.setTitle("¡¡Listo!!", for: .normal)
        masaButtom.isEnabled = true
        


    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let pasarDatos = segue.destination as! tipoQueso
        pasarDatos.datosTamanho = datosTamanho
        pasarDatos.datosMasa = masa
        
    }

    
}
