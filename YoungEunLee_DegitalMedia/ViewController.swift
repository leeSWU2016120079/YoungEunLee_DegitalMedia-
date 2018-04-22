
import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource  {

    @IBOutlet var displayLabel: UILabel!
    @IBAction func confirmButton(_ sender: Any) {
    }
    @IBOutlet var textF: UITextField!

    let cities = ["Seoul","Honolulu","NYC","Paris","London"]
    var pickerView = UIPickerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.delegate = self
        pickerView.dataSource = self
        
        textF.inputView = pickerView
        textF.textAlignment = .center
        textF.placeholder = "choose a city"
        textF.inputView = pickerView
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return cities.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return cities[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
        displayLabel.text = cities[row]
        //1st.textF.text = cities[row]
        textF.resignFirstResponder()
    }
    


}


