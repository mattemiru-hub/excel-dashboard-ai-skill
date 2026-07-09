# Tooling Contract

File này định nghĩa rõ AI bắt buộc phải dùng những tool nào để build dashboard đúng kiến trúc BI trong Excel.

## Agent / Environment Prerequisites

Nếu AI agent trực tiếp tạo workbook thay người dùng, môi trường làm việc tối thiểu phải có:

- Excel Desktop trên Windows
- Power Query
- Power Pivot / Data Model
- quyền đọc workbook raw data
- khả năng thao tác workbook, PivotTable, PivotChart, slicer và sheet layout

Nếu agent là Codex hoặc agent tương tự, nên nói rõ đã dùng capability nào, ví dụ:

- đọc cấu trúc workbook / schema
- chạy PowerShell hoặc script automation cho Excel
- kiểm tra workbook output sau khi save
- export preview hoặc audit output nếu môi trường cho phép

GitHub connector chỉ là tool phụ để publish skill repo hoặc tài liệu; nó không thay thế các tool Excel ở trên khi build dashboard thật.

## Mandatory Build Stack

AI phải build dashboard chính theo đúng thứ tự này:

1. Power Query
2. Data Model / Power Pivot
3. DAX Measures
4. PivotTables
5. PivotCharts
6. Slicers / Timeline
7. Dashboard sheet styling

## Tool nào dùng để làm gì

### Power Query

Bắt buộc dùng để:

- import raw data
- clean dữ liệu
- chuẩn hóa kiểu dữ liệu
- merge / append
- tạo fact table
- tạo dimension tables
- tạo calendar table nếu dashboard có logic theo thời gian

### Data Model / Power Pivot

Bắt buộc dùng để:

- load fact và dimension tables vào model
- tạo relationships
- giữ đúng kiến trúc star schema khi có thể

### DAX Measures

Bắt buộc dùng để:

- KPI chính
- target vs actual
- growth
- margin
- ranking
- top / bottom logic
- bất kỳ metric phân tích nào thuộc lớp semantic business logic

### PivotTables

Bắt buộc dùng làm nguồn cho:

- KPI support tables
- chart support tables
- top / bottom ranking tables
- filter-connected analysis tables

### PivotCharts

Bắt buộc dùng cho visual chính trên dashboard.

### Slicers / Timeline

Bắt buộc dùng nếu dashboard cần filter tương tác.

## Forbidden Shortcuts

AI không được dùng các đường tắt sau cho dashboard chính:

- chart thường gắn trực tiếp vào cell range
- chart thường gắn vào table range để thay cho PivotChart
- worksheet formula rời rạc để thay cho DAX business logic
- PivotTable không đi từ Data Model khi dashboard yêu cầu model-based architecture
- hardcode KPI card chỉ bằng text box mà không bám metric thật

## Architecture Audit Rules

Trước khi chốt workbook, AI phải kiểm tra và báo cáo:

- số lượng Workbook Queries
- số lượng ModelTables
- số lượng ModelRelationships
- số lượng ModelMeasures
- visual nào đang là PivotChart
- PivotTable / PivotChart chính có đi từ Data Model hay không
- có lỗi `#REF!`, `#VALUE!`, `#DIV/0!` hay không

## Nếu audit fail

AI phải báo rõ:

- visual nào đang là chart thường
- PivotTable nào chưa dùng Data Model
- measure nào còn thiếu
- phần nào mới chỉ là styling chứ chưa đúng kiến trúc BI

## Quy tắc dừng

Nếu dashboard chính chưa đi qua Mandatory Build Stack, AI không được tự nhận là đã hoàn thành đúng chuẩn Power BI-like Excel BI dashboard.
