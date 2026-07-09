# Intake Form Trước Khi Build Dashboard

File này là form intake tối thiểu mà AI nên dùng ở lần build đầu tiên cho một dataset lạ.

Phản hồi đầu tiên nên đi theo `references/first-response-contract-vi.md`.

## Mục tiêu

Buộc AI hỏi đủ để hiểu:

- dữ liệu nằm ở đâu
- dashboard dùng để phân tích cái gì
- ai là người xem chính
- metric nào là metric lõi
- dimension nào phải dùng làm slicer
- nên dùng blueprint dashboard nào

## Bộ câu hỏi intake chuẩn

AI nên hỏi thành một cụm ngắn, ưu tiên theo mẫu sau:

1. Sheet raw data chính là sheet nào?
2. Dashboard này dùng để phân tích chủ đề gì?
3. Người xem chính là ai?
4. Cột ngày chính để làm trend là cột nào?
5. Cột metric actual chính là cột nào?
6. Nếu có target hoặc plan, cột nào là target?
7. Bạn muốn dùng những field nào làm slicer?
8. Bạn muốn giữ dashboard hiện tại để polish hay rebuild lại từ đầu?

## Nếu user chưa biết cần dashboard gì

AI không được tự build ngay.

AI phải:

1. đọc schema
2. đề xuất 2-3 blueprint phù hợp nhất
3. giải thích ngắn từng blueprint
4. yêu cầu user chọn 1 blueprint

## Output mà AI phải tự chốt sau intake

Trước khi build, AI phải tự tóm tắt lại ngắn gọn:

- raw source đã chốt
- dashboard objective đã chốt
- blueprint đã chốt
- metric actual đã chốt
- target field nếu có
- slicer dimensions đã chốt
- rebuild hay polish

## Stop Rule

Nếu chưa chốt được các mục trên, AI không được:

- tạo query chính
- tạo DAX measure business-critical
- tạo bộ chart chính
- tạo KPI cards cuối cùng
- tự nhận là đã hiểu yêu cầu build
