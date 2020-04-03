//
//  ViewController.swift
//  camstreamer
//
//  Created by Lucas Mendes on 02/04/20.
//  Copyright © 2020 devSDMF. All rights reserved.
//

import UIKit
import MobileCoreServices

class CustomUIImagePickerController: UIImagePickerController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        modalPresentationStyle = .fullScreen
    }
    
    override public var shouldAutorotate: Bool {
        return true
    }
    
    override public var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .landscapeRight
    }
    
    override public var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation {
        return .landscapeRight
    }
    
}

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        modalPresentationStyle = .fullScreen
        // Do any additional setup after loading the view.
    }
    
    override public var shouldAutorotate: Bool {
        return true
    }
    
    override public var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .landscapeRight
    }
    
    override public var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation {
        return .landscapeRight
    }

    @IBAction func chooseFromCamera() {
        let picker: UIImagePickerController = CustomUIImagePickerController()
        
        picker.delegate = self;
        picker.sourceType = .camera
        
        picker.setNavigationBarHidden(true, animated: false)
        picker.mediaTypes = [kUTTypeMovie as String, kUTTypeImage as String]
        picker.cameraCaptureMode = UIImagePickerController.CameraCaptureMode.video
        picker.videoQuality = UIImagePickerController.QualityType.typeHigh
        picker.showsCameraControls = false
        
        picker.cameraViewTransform.ty += 100;
        
        present(picker, animated: true, completion: nil)
    }
    
}

