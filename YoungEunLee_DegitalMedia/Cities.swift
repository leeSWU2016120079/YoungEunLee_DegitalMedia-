//첫번째 레이블에 있는 text값을 서브뷰가 뜨자마자 나타내고 싶었지만 실패했습니다.
//실습한 코드를 인용, 저 이외의 수업을 듣는 분들과 수정 하였지만 실패.
//중간고사 이후 찾아 뵙겠습니다.

import UIKit

class Cities: UIViewController {
    
    @IBOutlet var textfieldInfo: UILabel!
    var info: String?
    var wantedVariable:String!
    
    
       override func viewDidLoad() {
       super.viewDidLoad() //이미 있는걸 불러오겠다
       //textfieldInfo.text = info
     
    }


}

