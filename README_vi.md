# Excel Dashboard AI Skill - Bản Tiếng Việt

Đây là skill để biến một file Excel thông thường thành dashboard điều hành kiểu BI, ưu tiên trải nghiệm giống Power BI hơn là một báo cáo spreadsheet cổ điển.

![Golden reference preview](./assets/golden-reference-preview.png)

## Skill này dùng để làm gì

- Có thêm 1 companion skill chỉ để intake trước khi build
- Tái cấu trúc workbook Excel thành dashboard executive
- Dùng Power Query để xử lý và làm sạch dữ liệu
- Dùng Data Model / Power Pivot để tạo quan hệ bảng
- Dùng DAX measure cho KPI và logic visual
- Dùng PivotTable + PivotChart cho các visual chính
- Bắt AI intake trước khi build dashboard lần đầu
- Có contract cho phản hồi đầu tiên để AI không được build ngay từ câu trả lời đầu
- Có form intake chuẩn để AI hỏi đúng những câu cốt lõi
- Nếu dữ liệu lạ, buộc AI chọn đúng blueprint dashboard trước
- Nói rõ agent phải có những capability nào thì mới build dashboard thật được
- Tạo bộ slicer rõ ràng, dễ lọc, dễ đọc
- Căn chỉnh dashboard để nhìn gọn ở mức zoom 75%
- Tự hỏi lại các câu cần thiết khi workbook còn mơ hồ, thay vì đoán bừa

## Phù hợp khi nào

Dùng skill này khi bạn muốn:

- rebuild một dashboard Excel từ raw data
- dùng cho user chưa biết rõ cần chart gì
- biến file đang là report thành dashboard refreshable
- ép AI chọn đúng kiểu dashboard cho dataset lạ
- ép AI đi theo một visual contract có sẵn
- audit các lỗi UX như slicer, màu chart, guide card, zoom, workbook visibility
- tạo prompt mẫu để người khác gõ lại và ra kết quả cùng style
- ép AI phải hỏi lại đúng các mapping quan trọng trước khi build
- buộc AI nói rõ khi nó chưa thật sự build workbook trong Excel mà mới chỉ dừng ở mức hướng dẫn

Dùng companion intake skill khi bạn muốn:

- ép phản hồi đầu tiên chỉ được hỏi intake
- chốt brief trước khi bắt đầu build
- truyền 1 handoff summary gọn vào skill build chính

## Cách dùng nhanh

1. Cài skill vào thư mục skill local bằng `scripts/install_local_skill.ps1`
2. Mở workbook cần làm dashboard
3. Gọi Codex với cú pháp `$excel-dashboard-ai-skill`
4. Mô tả mong muốn của bạn: KPI nào cần có, field nào cần slicer, bố cục mong muốn
5. Nếu bạn chưa biết cần dashboard kiểu gì, để skill đề xuất blueprint trước rồi bạn chọn
6. Để skill rebuild theo thứ tự:
   - Power Query
   - Data Model / Power Pivot
   - DAX measures
   - PivotTables
   - PivotCharts
   - Slicers
   - Dashboard layer

Script cài đặt sẽ cài cả:

- `excel-dashboard-ai-skill`
- `excel-dashboard-ai-intake`

## Đầu ra mong đợi

- Workbook `.xlsx` hoặc `.xlsm` hoàn chỉnh
- Dashboard có thể Refresh All khi raw data thay đổi
- Preview image để review nhanh
- Thống kê số lượng query, bảng model, relationship và measure

## Tài liệu nên đọc thêm

- `SKILL.md`: quy tắc vận hành của skill
- `references/golden-reference-spec-vi.md`: contract về giao diện và UX
- `references/clarification-rules-vi.md`: luật để AI tự hỏi lại trước khi đoán
- `references/dashboard-blueprint-router-vi.md`: cách AI chọn kiểu dashboard phù hợp
- `references/first-response-contract-vi.md`: ép phản hồi đầu tiên chỉ được hỏi intake
- `references/intake-form-vi.md`: form intake chuẩn trước khi build
- `references/prompt-template-vi.md`: prompt mẫu bằng tiếng Việt
- `references/tooling-contract-vi.md`: bộ tool bắt buộc và các shortcut bị cấm
- `references/qa-checklist-vi.md`: checklist audit trước khi giao file
- `examples/README.md`: ví dụ áp dụng skill trong tình huống thực tế
- `sample-output/README.md`: mô tả gói bàn giao mẫu khi skill hoàn thành tốt

## Phiên bản public

- `v1.0.0`: bản public-ready đầu tiên của repo skill này
- `v1.0.1`: bản bổ sung cơ chế hỏi lại trước khi đoán các mapping quan trọng
- `v1.0.2`: bản hardening intake, chặn build khi chưa hỏi đủ, và nói rõ ranh giới capability khi AI chưa thật sự build workbook trong Excel

## Lưu ý

- Skill này hướng đến Windows Excel automation vì phần style đang dùng Excel COM
- Các visual chính phải đi từ Power Query + Data Model + PivotTable/PivotChart
- Mục tiêu là trải nghiệm executive dashboard, không phải sheet báo cáo kiểu bảng tính
