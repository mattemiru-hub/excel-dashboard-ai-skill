# QA Checklist

Dùng checklist này trước khi chốt workbook:

## Intake và logic build

- Đã hỏi intake ở lần build đầu tiên trên dataset lạ
- Đã chốt raw data sheet
- Đã chốt dashboard objective
- Đã chốt dashboard blueprint
- Đã chốt actual metric field
- Đã chốt target field nếu dashboard cần target vs actual
- Đã chốt slicer dimensions chính
- Nếu user chưa rõ chart cần gì, AI đã đề xuất 2-3 blueprint trước khi build
- Có intake summary ngắn trước hoặc cùng lúc với lúc build
- Không có dấu hiệu AI build trước rồi mới quay lại hỏi

## Data và model

- Đếm số query
- Đếm số model tables
- Đếm số relationships
- Đếm số measures
- Kiểm tra không có `#REF!`, `#VALUE!`, `#DIV/0!`
- Kiểm tra slicer vẫn lọc được Year, Month, Region, Channel, Category, Area Manager, Sales Rep nếu dữ liệu có các dimension này

## UX và giao diện

- Dashboard nhìn như executive BI product, không như bảng Excel thô
- Chart, title, legend, guide, slicer không bị tràn khung
- Subtitle và section label cân đối, đọc rõ ở zoom 75%
- Màu KPI band chỉ áp dụng cho attainment-status visuals
- Chart Channel Efficiency dùng metric blue và metric teal
- Monthly trend vẫn còn ý nghĩa khi thao tác slicer Month
- Data labels để đọc được value ở các chart cột / thanh cần thiết

## Workbook behavior

- Workbook mở lên không trắng trang
- Dashboard sheet đang active khi save
- Workbook window visible
- Gridlines / headings đã tắt nếu dashboard cần
- Có bản local nếu file gốc nằm trong OneDrive / cloud path

## Output

- Đã xuất preview PNG
- Đã tự đánh giá giao diện >= 8.5/10
- Đã ghi rõ các field thiếu, field map được, và field phải bỏ qua nếu schema khác
