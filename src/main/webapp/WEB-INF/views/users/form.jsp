<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="<c:url value="/ASSETS/css/form.css"/>">
    <title>Survey Form</title>
</head>
<body>
    <div class="container ">
        <header class="header">
            <h1 id="title">
                Khảo Sát Khách Hàng
            </h1>
            <p id="description">
                Thank you for taking the time to help us to improve the plateform
            </p>
        </header>
        <form action="formAns" id="survey-form" method="post">
            <!-- radio button section -->
            <c:forEach var="q" items="${question}">
            <div class="form-group">
            
                <p id="quest">${q.getId()}. ${q.getCauhoi()}</p>
                <c:forEach var="ans" items="${q.getAnswer()}">
                <label for="">
                    <input type="radio" name="source${q.getId()}" value="${ans.getIdCauTraLoi()}"
                    class="inputRadio"
                    checked> ${ans.getCauTraLoi()}
                </label>
                </c:forEach>
               <!--  <label for="">
                    <input type="radio" name="source" value="nghiencuu"
                    class="inputRadio"
                    >Nghiên cứu tìm tòi
                </label>
                <label for="">
                    <input type="radio" name="source" value="nghethuat"
                    class="inputRadio"
                    > Nghệ thuật
                </label>
                <label for="">
                    <input type="radio" name="source" value="phieuluu"
                    class="inputRadio"
                    > Phiêu lưu, khám phá
                </label>
                <label for="">
                    <input type="radio" name="source" value="amnhac"
                    class="inputRadio"
                    > Âm nhạc
                </label> -->
            </div>
            </c:forEach>
            <!-- end of radio button -->
            <!-- Text -->
           <!--  <div class="form-group">
                <p id="quest">3. Mục đích đọc sách của bạn là gì  ?</p>
                <label for="">
                    <input type="radio" name="source2" value="giaitri"
                    class="inputRadio"
                    checked> giải trí
                </label>
                <label for="">
                    <input type="radio" name="source2" value="kienthuc"
                    class="inputRadio"
                    >Kiến thức và học tập
                </label>
                <label for="">
                    <input type="radio" name="source2" value="phattrien"
                    class="inputRadio"
                    > Phát Triễn Bản Thân
                </label>
                <label for="">
                    <input type="radio" name="source2" value="giaiquyet"
                    class="inputRadio"
                    > Giải quyết vấn đề
                </label>
                <label for="">
                    <input type="radio" name="source2" value="lichsu"
                    class="inputRadio"
                    > Tìm hiểu lịch sử và văn hóa
                </label>
                <label for="">
                    <input type="radio" name="source2" value="thoigian"
                    class="inputRadio"
                    > Giết thời gian
                </label>
            </div>


             end Text 1

            Text2
            <div class="form-group">
                <p id="quest">4. Đâu là mô tả đúng về thời gian bạn dành cho việc đọc sách mỗi tuần?</p>
                <label for="">
                    <input type="radio" name="source3" value="1 ngay"
                    class="inputRadio"
                    checked> 1 ngày
                </label>
                <label for="">
                    <input type="radio" name="source3" value="2 ngay"
                    class="inputRadio"
                    >2 ngày
                </label>
                <label for="">
                    <input type="radio" name="source3" value="3 ngay"
                    class="inputRadio"
                    > 3 ngày
                </label>
                <label for="">
                    <input type="radio" name="source3" value="4 ngay"
                    class="inputRadio"
                    > 4 ngày
                </label>
                <label for="">
                    <input type="radio" name="source3" value="5ngay"
                    class="inputRadio"
                    > 5 ngày
                </label>
            </div>

            end Text 2

            Text 3
            <div class="form-group">
                <p id="quest">5. Lĩnh vực bạn đang làm việc ?</p>
                <label for="">
                    <input type="radio" name="source4" value="kinhte"
                    class="inputRadio"
                    checked> Kinh Tế
                </label>
                <label for="">
                    <input type="radio" name="source4" value="congnghe"
                    class="inputRadio"
                    >Công nghệ
                </label>
                <label for="">
                    <input type="radio" name="source4" value="baochi"
                    class="inputRadio"
                    > Báo chí
                </label>
                <label for="">
                    <input type="radio" name="source4" value="giaoduc"
                    class="inputRadio"
                    > Giáo dục
                </label>
                <label for="">
                    <input type="radio" name="source4" value="thethao"
                    class="inputRadio"
                    > Thể thao
                </label>
                <label for="">
                    <input type="radio" name="source4" value="other"
                    class="inputRadio"
                    > Khác
                </label>
            </div>


             end Text 3

            Text 4
            <div class="form-group">
                <p id="quest">6. Bạn đã chi bao nhiêu tiền cho việc mua sách trong năm vừa rồi ?</p>
                <label for="">
                    <input type="radio" name="source5" value="khoang500"
                    class="inputRadio"
                    checked> Khoảng 500k
                </label>
                <label for="">
                    <input type="radio" name="source5" value="500-1tr"
                    class="inputRadio"
                    >500k-1triệu
                </label>
                <label for="">
                    <input type="radio" name="source5" value="1-2tr"
                    class="inputRadio"
                    > 1-2 triệu
                </label>
                <label for="">
                    <input type="radio" name="source5" value="2-5tr"
                    class="inputRadio"
                    > 2-5 triệu
                </label>
                <label for="">
                    <input type="radio" name="source5" value="5-10tr"
                    class="inputRadio"
                    > 5-10 triệu
                </label>
                <label for="">
                    <input type="radio" name="source5" value="tren10tr"
                    class="inputRadio"
                    > Trên 10 triệu
                </label>
            </div>


             end Text 4



            

            Checkbox section
            <div class="form-group">
                <p id="quest">7. Bạn ấn tượng với tựa sách nào ? </p>
                <label for="">
                    <input type="checkbox" name="prefer" class="checkbox" value="To Kill"> To Kill a Mockingbird – Dune - A People's History of the United States 
                </label>
                <label for="">
                    <input type="checkbox" name="prefer" class="checkbox" value="How to Win Friends">  How to Win Friends and Influence People
                </label>
                <label for="">
                    <input type="checkbox" name="prefer" class="checkbox" value="Never eat alone ">  Never eat alone 
                </label>
                <label for="">
                    <input type="checkbox" name="prefer" class="checkbox" value="The Art and Science"> The Art and Science of Technical Analysis
                </label>
                <label for="">
                    <input type="checkbox" name="prefer" class="checkbox" value="other"> Other
                </label>
            </div> -->
            <!-- End of checkbox section -->

            <!-- Textarea section -->
            <div class="form-group">
                <p id="quest">Give us your feedback</p>
                <textarea name="feedback"  cols="30" rows="5"  id="feedback" class="textarea" placeholder="Enter your feedback here..."></textarea>
            </div>
            <div class="form-group">
                <button type="submit" id="submit" class="btn">Submit</button>
            </div>
        </form>
    </div>
</body>
</html>