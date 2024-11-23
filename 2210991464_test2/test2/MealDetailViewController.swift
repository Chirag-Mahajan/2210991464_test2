//
//  MealDetailViewController.swift
//  test2
//
//  Created by Chirag Mahajan on 23/11/24.
//

import UIKit

class MealDetailViewController: UIViewController,UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    
    
    @IBOutlet weak var Stepper3: UIStepper!
    @IBOutlet weak var Stepper2: UIStepper!
    @IBOutlet weak var stepper1: UIStepper!
    @IBOutlet weak var Nutritional: UITextField!
    @IBOutlet weak var Calories: UITextField!
    @IBOutlet weak var Instructions: UITextField!
    @IBOutlet weak var ingredient3: UITextField!
    @IBOutlet weak var Ingredient2: UITextField!
    @IBOutlet weak var Ingredient1: UITextField!
    @IBOutlet weak var Category: UITextField!
    @IBOutlet weak var mealType: UITextField!
    @IBOutlet weak var mealName: UITextField!
    @IBOutlet weak var mealimage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    @IBAction func photoChange(_ sender: UIButton) {
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        let alertController = UIAlertController(title: "Choose Image Source", message: nil, preferredStyle: .actionSheet)
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alertController.addAction(cancelAction)
        
        
        if UIImagePickerController.isSourceTypeAvailable(.camera){
            let cameraAction = UIAlertAction(title:"Camera",style: .default,handler: {action in
                print("User has Chosen Camera")
                imagePicker.sourceType = .camera
                self.present(imagePicker,animated: true,completion: nil)})
            alertController.addAction(cameraAction)
        }
        
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary){
            let photoLibraryAction = UIAlertAction(title: "Photo Library", style: .default, handler: {action in print("user has Chosen photo Library")
                imagePicker.sourceType = .photoLibrary
                self.present(imagePicker,animated: true,completion: nil)})
            alertController.addAction(photoLibraryAction)
        }
        present(alertController, animated: true, completion: nil)
    }
    @IBAction func shareButtonTapped(_ sender: UIButton) {
        guard let image = mealimage.image else {return}
        
        let activityController = UIActivityViewController(activityItems: [image,mealName.text ?? "","text"], applicationActivities: nil)
        present(activityController, animated: true, completion: nil)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let selectedImage = info[.originalImage]as?UIImage else {return}
        mealimage.image = selectedImage
        dismiss(animated: true,completion: nil)
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true,completion: nil)
    }
    
   
    @IBAction func unwindSegue(unwindSegue:
                                             UIStoryboardSegue) {
        
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
