//
//  ViewController.swift
//  Calculadora
//
//  Created by Alumno on 07/08/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtTotalSinPropina: UITextField!
    @IBOutlet weak var sldPorcentajePropina: UISlider!
    @IBOutlet weak var lblPorcentajePropina: UILabel!
    @IBOutlet weak var lblCantidadPropina: UILabel!
    @IBOutlet weak var lblTotalConPropina: UILabel!
    
    @IBAction func doChangeCuenta(_ sender: Any) {
      
        
        var PorcentajePropina = 0.0
        PorcentajePropina = Double (sldPorcentajePropina.value)
       lblPorcentajePropina.text = "\(sldPorcentajePropina.value)%"
       PorcentajePropina = PorcentajePropina / 100
            
        
        
        var CantidadPropina = 0.0
        CantidadPropina = Double (txtTotalSinPropina.text!)! * PorcentajePropina
        lblCantidadPropina.text = "$\(CantidadPropina)"
        
        let TotalConPropina = Double(txtTotalSinPropina.text!)! + CantidadPropina
        lblTotalConPropina.text = "$\(TotalConPropina)"
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

