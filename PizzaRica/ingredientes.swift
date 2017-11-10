//
//  ingredientes.swift
//  PizzaRica
//
//  Created by Jose Lopez on 9/11/17.
//  Copyright © 2017 Jose Lopez. All rights reserved.
//

import Foundation
import UIKit

class tipoIngredientes : UIViewController {
    
    var datosTamanho : String = ""
    var datosMasa : String = ""
    var datosQueso : String = ""
    var ingredientesSeleccionados : String = ""
    
    var ingredientes : Dictionary <String , Bool> = ["Jamon" : false, "Pepperoni" : false, "Pavo" : false, "Salchichas" : false, "Aceituna" : false]
    
//    let ingredientes = [String]()
    
    @IBOutlet weak var ingredientesLabel: UILabel!
    @IBAction func jamonSwitch(_ sender: UISwitch) {
        if ingredientes["Jamon"] == false {
            ingredientes["Jamon"] = true
        } else {
            ingredientes["Jamon"] = false
        }
    }
    
    @IBAction func pepperoniSwitch(_ sender: UISwitch) {
        if ingredientes["Pepperoni"] == false {
            ingredientes["Pepperoni"]  = true
        } else {
            ingredientes["Pepperoni"]  = false
        }
    }
    @IBAction func pavoSwitch(_ sender: UISwitch) {
        if ingredientes["Pavo"] == false {
            ingredientes["Pavo"]  = true
        } else {
            ingredientes["Pavo"]  = false
        }
    }
    @IBAction func salchichaSwitch(_ sender: UISwitch) {
        if ingredientes["Salchichas"] == false {
            ingredientes["Salchichas"] = true
        } else {
            ingredientes["Salchichas"] = false
        }
    }
    @IBAction func aceitunaSwitch(_ sender: UISwitch) {
        if ingredientes["Aceituna"] == false {
            ingredientes["Aceituna"]  = true
        } else {
            ingredientes["Aceituna"]  = false
        }
    }
    
    @IBAction func ingredientesButtom(_ sender: UIButton) {
        ingredientesSeleccionados = ""
        for (nombre, presente) in ingredientes {
            if presente == true {
                ingredientesSeleccionados += " " + nombre
                
            }
            
        }
        print(ingredientesSeleccionados)
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let pasarDatos = segue.destination as! orden
        pasarDatos.datosTamanho = datosTamanho
        pasarDatos.datosMasa = datosMasa
        pasarDatos.datosQueso = datosQueso
        pasarDatos.datosIngredientes = ingredientesSeleccionados

    
        
    }
    
}
