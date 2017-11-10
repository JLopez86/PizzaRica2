//
//  tamanho.swift
//  PizzaRica
//
//  Created by Jose Lopez on 8/11/17.
//  Copyright © 2017 Jose Lopez. All rights reserved.
//

import Foundation
import UIKit

class seleccionarTamanho : UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    var tamanhoSeleccionado : String = ""
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var porciones: UILabel!
    
    @IBOutlet weak var tamanhoButtom: UIButton!
    
    
    let tamanho = ["XXL", "Familiar", "Grande", "Mediano", "Pequeño", "Personal"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return tamanho[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return tamanho.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        tamanhoSeleccionado = tamanho[row]
        mostrarPorciones()
    }
    
    func mostrarPorciones(){
        switch tamanhoSeleccionado {
        case "XXL" :
            porciones.text = "16 Porciones Riquísimas"
            controlarRelleno()
        case "Familiar" :
            porciones.text = "12 Porciones Riquísimas"
            controlarRelleno()
        case "Grande" :
            porciones.text = "10 Porciones Riquísimas"
            controlarRelleno()
        case "Mediano" :
            porciones.text = "6 Porciones Riquísimas"
            controlarRelleno()
        case "Pequeño" :
            porciones.text = "4 Porciones Riquísimas"
            controlarRelleno()
        case "Personal" :
            porciones.text = "Una Porción Riquísima"
            controlarRelleno()
        default:
            porciones.text = "🍕"

        }
        
    }
    
    
    func controlarRelleno() {
        tamanhoButtom.isEnabled = true
        tamanhoButtom.setTitle("¡¡Listo!!", for: .normal)
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let pasarDatos = segue.destination as! tipoMasa
        pasarDatos.datosTamanho = String(tamanhoSeleccionado)
        
    }
    
    
    @IBAction func tamanhoButton(_ sender: Any) {
        if porciones.text == "🍕" {
            let alerta = UIAlertController(title: "Recuerda", message: "Debes selecionar el tamaño de tu preferencia", preferredStyle: .alert)
            alerta.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alerta, animated: true, completion: nil)
            
        }
        
    }
    
}
