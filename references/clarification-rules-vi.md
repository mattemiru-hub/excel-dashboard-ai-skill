# Quy Tắc Hỏi Lại Trước Khi Build Dashboard

Mục tiêu của file này là buộc AI hỏi lại đúng các câu cần thiết trước khi động vào cấu trúc workbook, thay vì tự đoán các field quan trọng.

## Nguyên tắc mặc định cho repo public

Repo này được thiết kế để dùng cho người có thể không biết rõ Excel, Data Model, hay thậm chí chưa biết mình cần chart gì.

Vì vậy, ở lần build đầu tiên trên một dataset lạ, AI phải mặc định:

- hỏi intake trước
- chốt dashboard objective trước
- chốt blueprint phân tích trước
- rồi mới được build query, measure, PivotTable, PivotChart, slicer, và dashboard

Form intake mặc định nên lấy từ `references/intake-form-vi.md`.
Format của phản hồi đầu tiên nên lấy từ `references/first-response-contract-vi.md`.

## Khi nào phải hỏi lại

AI phải dừng và hỏi lại nếu gặp một trong các trường hợp sau:

- không rõ sheet nào là raw data chính
- không rõ dashboard cần phân tích chủ đề gì
- user chưa xác định được muốn xem KPI hay chart gì
- không rõ dashboard dành cho ai xem
- có nhiều sheet raw và không có sheet nào nổi bật rõ ràng
- có nhiều cột ngày và không rõ cột nào là trục thời gian chính
- có nhiều cột actual value, amount, revenue, cost, quantity, margin hoặc score
- user muốn target vs actual nhưng không rõ cột target hoặc plan
- không rõ dimension nào tương ứng với slicer chính
- không rõ nên giữ dashboard hiện tại để polish hay rebuild lại hoàn toàn
- có KPI được yêu cầu nhưng workbook hiện tại chưa có dữ liệu đủ để tính

## Các field không được phép đoán bừa

Các field sau là business-critical, không được tự đoán khi có hơn một khả năng hợp lý:

- date field chính
- actual value chính
- target hoặc plan
- gross margin nếu có nhiều biến thể
- dimension dùng để điều khiển slicer chính
- dashboard objective chính
- dashboard blueprint chính

## Thứ tự hỏi ưu tiên

Khi cần hỏi lại, AI nên hỏi theo thứ tự:

1. raw data sheet
2. dashboard objective
3. audience / người xem
4. date field
5. actual value field
6. target field
7. slicer dimensions
8. giữ dashboard cũ hay rebuild

## Cơ chế fail-safe

Nếu đây là lần build đầu tiên trên dataset lạ, AI phải coi việc hỏi intake là điều kiện bắt buộc để được phép build.
Đồng thời, phản hồi substantive đầu tiên phải là block hỏi intake, không được là block build.

Không được lấy các lý do sau để bỏ qua intake:

- tên cột nhìn quen
- dữ liệu có vẻ giống sales
- user chưa nêu rõ chart nhưng workbook có đủ cột số
- AI nghĩ mình đã đoán được objective

## Nếu user chưa biết cần chart gì

AI không được tự nhảy vào build dashboard sales mặc định.

Thay vào đó, AI phải:

1. đọc schema
2. đề xuất 2-3 blueprint phù hợp nhất
3. giải thích ngắn từng blueprint
4. yêu cầu user chọn 1 blueprint trước khi build

Ví dụ blueprint:

- Sales executive
- Finance / P&L
- Operations
- Inventory / supply chain
- Audit / compliance

## Mẫu câu hỏi nên dùng

AI nên dùng câu ngắn, cụ thể, ít mở rộng:

1. Sheet raw data chính là sheet nào?
2. Dashboard này cần phân tích chủ đề gì?
3. Dashboard này chủ yếu dành cho ai xem?
4. Cột nào là ngày chính để làm trend?
5. Cột nào là metric actual chính?
6. Cột nào là target hoặc kế hoạch nếu cần so sánh?
7. Với workbook này, bạn muốn dùng những field nào làm slicer?
8. Bạn muốn giữ dashboard hiện tại để polish hay rebuild lại từ đầu?

Sau khi user trả lời, AI nên tóm tắt lại 1 block xác nhận trước khi build:

- raw sheet
- objective
- blueprint
- date field
- actual field
- target field nếu có
- slicers
- rebuild hay polish

## Nguyên tắc hỏi

- chỉ hỏi những gì thực sự chặn việc làm tiếp
- gom câu hỏi thành một cụm ngắn thay vì hỏi lan man từng câu rời rạc
- nếu chỉ thiếu một mapping, chỉ hỏi đúng một mapping đó
- không hỏi lại những thứ đã được golden reference cố định
- sau khi user trả lời, AI phải bám đúng câu trả lời đó trong toàn bộ phần build
- nếu user trả lời thiếu, AI phải hỏi bù đúng phần còn thiếu thay vì tự đoán tiếp
- ở phản hồi đầu tiên, AI không được chen thêm plan build hay mô tả output như thể đã chốt

## Quy tắc dừng

Nếu chưa rõ các mapping bắt buộc, AI không được:

- tự dựng query chính
- tự tạo DAX measure business-critical
- tự dựng slicer rail hoàn chỉnh
- tự build KPI cards dựa trên mapping mơ hồ
- tự chọn dashboard blueprint theo cảm tính rồi build luôn
- tự tạo chart chỉ vì thấy cột có vẻ hợp lý
- tự quyết định slicer mặc định nếu user chưa chốt objective
- tự nói như thể đã được intake đầy đủ khi thực tế chưa hỏi
- dùng ngay phản hồi đầu tiên để cắm đầu build dashboard

Phải hỏi lại trước rồi mới làm tiếp.
