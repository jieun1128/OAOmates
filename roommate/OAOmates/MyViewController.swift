
import UIKit

var DormitoryTypeArray = ["남산학사", "충무학사", "고양학사"]

class MyViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{

    @IBOutlet weak var mypicker: UIPickerView!
    
    override func viewDidLoad(){
        super.viewDidLoad()
        mypicker.delegate = self
        mypicker.dataSource = self
    }
    
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return DormitoryTypeArray.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return DormitoryTypeArray[row]
    }
}
