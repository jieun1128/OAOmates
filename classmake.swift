import UIKit
import UIKit

class Person { // 개인이 회원가입 했을 때 개인에게 생성(배정)된다.
    //personInformation
    let name
    var nickname
    enum age
    {case 19, 20, 21, 22, 23, 24, 25 //등}
    enum grade
    {case 1, 2, 3, 4, ,5}
    enum nationality
    {case korea, japan, china, russia, india}
    enum major
    {case 불교대학, 문과대학, 이과대학, 법과대학, 사회과학대학, 경찰사법대학, 경영대학, 바이오시스템대학, 공과대학, 사범대학, 예술대학, 약학대학, 미래융합대학, 연계전공}
    
}

class Dorm { // 기숙사 생성. 기숙사를 구분하는 정보. 다음 4기준이 모두 충족되어야 서로 매칭될 수 있다.
    enum roomtype{
        case two, four, six
    }
    enum gender{
        case man, woman
    }
    enum dormitory{
        
    }
    
}

class Room {   // 서로 매칭되었을 때 생기는 방
    
}

class Profile{ // 프로파일 작성하는 프로그램
    // person 클래스로 이동
}

class Search : Survey{ // 검색하는 프로그램
    private:
    var sameProfile // 비교하여 프로파일의 같은 항목 숫자로 저장
    var sameSurvey  // 비교하여 설문조사의 비슷한 정도 숫자로 저장
    
    public:
    // 프로파일 항목을 비교하는 함수 (기숙사, 인실, 성별,
    void compareProfile()
    // 설문조사 항목을 알아보는 함수
    void compareSurvey()
}

class Message { // 메세지쓰는 프로그램
    
}

    class Survey :person { // 설문조사하는 프로그램
    
}

class Jjim { // 찜하는 프로그램
    
}

class Recommend{ // 추천율을 계산하는 프로그램
    
}

class Matching{ // 서로 매칭하주는 프로그램
    
}
