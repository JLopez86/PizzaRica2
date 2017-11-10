//
//  queso.swift
//  PizzaRica
//
//  Created by Jose Lopez on 9/11/17.
//  Copyright © 2017 Jose Lopez. All rights reserved.
//

import Foundation
import UIKit

class tipoQueso : UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    var datosTamanho : String = ""
    var datosMasa : String = ""
    var tipoQueso : String = ""
    @IBOutlet weak var queso: UILabel!
    
    @IBOutlet weak var quesoButtom: UIButton!
    @IBOutlet weak var quesoPickerView: UIPickerView!
    
    let quesos = ["Mozzarela", "Cheddar", "Parmesano", "Sin Queso"]
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return quesos.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return quesos[row]
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        tipoQueso = quesos[row]
        mostrarQueso()
    }
    
    func mostrarQueso() {
        switch tipoQueso {
        case "Mozzarela":
            queso.text = tipoQueso
            comprobarQueso()
        case "Cheddar":
            queso.text = tipoQueso
            comprobarQueso()
        case "Parmesano":
            queso.text = tipoQueso
            comprobarQueso()
        case "Sin Queso":
            queso.text = tipoQueso
            comprobarQueso()
        default:
            queso.text = "🍕"
        }
    }
    
    
    func comprobarQueso() {
        quesoButtom.setTitle("¡¡Listo!!", for: .normal)
        quesoButtom.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let pasarDatos = segue.destination as! tipoIngredientes
        pasarDatos.datosTamanho = datosTamanho
        pasarDatos.datosMasa = datosMasa
        pasarDatos.datosQueso = tipoQueso
        
    }
    
    
    @IBAction func quesoButtom(_ sender: Any) {
    }
}
