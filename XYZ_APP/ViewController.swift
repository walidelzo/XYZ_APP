//
//  ViewController.swift
//  XYZ_APP
//
//  Created by Admin on 3/8/19.
//  Copyright © 2019 NanoSoft. All rights reserved.
//

import UIKit
import CoreMotion

class ViewController: UIViewController {
    @IBOutlet weak var zLabel: UILabel!
    @IBOutlet weak var yLabel: UILabel!
    @IBOutlet weak var xLabel: UILabel!
    var coreMotionManager = CMMotionManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        coreMotionManager.startAccelerometerUpdates(to: .main, withHandler: accelerateDatalabel)
    }

    func accelerateDatalabel(data:CMAccelerometerData? , error :Error?){
        guard let accelData = data else { return }

        let formmaterr = NumberFormatter()
        
        formmaterr.maximumFractionDigits = 1
        formmaterr.minimumFractionDigits = 1
        
        
        let formatter = NumberFormatter()
        formatter.minimumFractionDigits = 1
        formatter.maximumFractionDigits = 1
        
        
        let x = formmaterr.string(for: accelData.acceleration.x)!
        let y = formmaterr.string(for: accelData.acceleration.y)!
        let z = formmaterr.string(for: accelData.acceleration.z)!
        
        xLabel.text="x:\(x)"
        yLabel.text="y:\(y)"
        zLabel.text="z:\(z)"
        
        
        
        

    }

    
    

}

