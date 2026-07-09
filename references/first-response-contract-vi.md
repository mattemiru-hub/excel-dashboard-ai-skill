# First Response Contract

File này định nghĩa câu trả lời đầu tiên bắt buộc của AI khi user yêu cầu build dashboard trên một dataset lạ hoặc chưa chốt objective.

## Mục tiêu

Không cho AI:

- nhảy vào build dashboard ngay
- tự suy diễn KPI / chart / slicer
- trả lời theo kiểu "tôi sẽ làm..." rồi âm thầm bắt đầu build

## Luật bắt buộc

Nếu chưa có intake đã chốt, thì phản hồi substantive đầu tiên của AI phải:

1. chỉ hỏi intake
2. nếu cần thì đề xuất 2-3 blueprint
3. dừng lại để chờ user trả lời

Không được kèm theo:

- kế hoạch build chi tiết
- mô tả dashboard như thể đã chốt
- danh sách measure sẽ tạo như thể đã xác nhận
- kết luận AI đã hiểu đầy đủ dữ liệu

## First response format bắt buộc

AI nên trả lời theo đúng cấu trúc ngắn này:

### Intake needed

1. Sheet raw data chính là sheet nào?
2. Dashboard này dùng để phân tích chủ đề gì?
3. Người xem chính là ai?
4. Cột ngày chính để làm trend là cột nào?
5. Cột metric actual chính là cột nào?
6. Nếu có target hoặc plan, cột nào là target?
7. Bạn muốn dùng những field nào làm slicer?
8. Bạn muốn giữ dashboard hiện tại để polish hay rebuild lại từ đầu?

### Suggested blueprints

- Blueprint 1: ...
- Blueprint 2: ...
- Blueprint 3: ...

Nếu objective đã rõ rồi thì phần `Suggested blueprints` có thể bỏ.

## Stop rule

Nếu AI chưa nhận được câu trả lời intake, thì không được:

- build query
- build model
- build measure
- build chart
- build slicer
- mô tả output như thể chắc chắn sẽ làm theo hướng nào
