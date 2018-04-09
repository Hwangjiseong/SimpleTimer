
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLable: UILabel!
    @IBOutlet weak var timerSwitch: UISwitch!
    var myTimer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timerSwitch.setOn(false, animated: true)
    }
    
    @objc func updateTime(){
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm:ss a"
        timeLable.text = formatter.string(from: date)
        
    }
    @IBAction func timerSwitch(_ sender: UISwitch) {
        if timerSwitch.isOn == true {
            //myTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
            
            myTimer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: {(myTimer)in self.updateTime()})
        } else {
            myTimer.invalidate()
        }
    }
   

}

