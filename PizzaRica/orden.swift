//
//  orden.swift
//  PizzaRica
//
//  Created by Jose Lopez on 9/11/17.
//  Copyright © 2017 Jose Lopez. All rights reserved.
//

import Foundation
import UIKit

class orden : UIViewController {
    
    
    
    
    var datosTamanho : String = ""
    var datosMasa : String = ""
    var datosQueso : String = ""
    var datosIngredientes : String = ""
    
    
    
    @IBOutlet weak var tamanhoLabel: UILabel!
    
    @IBOutlet weak var masaLabel: UILabel!
    
    @IBOutlet weak var quesoLabel: UILabel!
    
    @IBOutlet weak var ingredientesLabel: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        tamanhoLabel.text = "de tamaño " + datosTamanho
        masaLabel.text = "de " + datosMasa
        quesoLabel.text = datosQueso
        ingredientesLabel.text = datosIngredientes
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    
    @IBAction func cancelarButtom(_ sender: UIButton) {


        let alerta = UIAlertController(title: "Cancelar Orden", message: "¿Deseas cancelar tu orden?", preferredStyle: .alert)
        
        let si = UIAlertAction(title: "Si", style: .default, handler: {
            actionCrearCuenta in
           self.primeraVista()
        })
        
        let no = UIAlertAction(title: "No", style: .cancel, handler: {
            accionCanelar in
            
             print("casi casi cancelo")
        })
        
        alerta.addAction(no)
        alerta.addAction(si)
        
        self.present(alerta, animated: true, completion: nil)

        


        
        
    }
    
    
    func primeraVista() {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        
        let inicio = storyBoard.instantiateViewController(withIdentifier: "inicio") as! ViewController
        
        self.present(inicio, animated:true, completion:nil)
    }
    
    @IBAction func confirmarButtom(_ sender: UIButton) {
        let alert = UIAlertController(title: "Orden Confirmada", message: "Su pizza esta en el horno", preferredStyle: UIAlertControllerStyle.alert)
        
        alert.addAction(UIAlertAction(title: "Genial", style: UIAlertActionStyle.default, handler: {
        accionGenial in
            self.primeraVista()
        }))
        
        
        self.present(alert, animated: true, completion: nil)
        
        
    }
    
    
    
}
