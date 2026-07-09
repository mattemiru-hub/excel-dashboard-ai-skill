# Dashboard Blueprint Router

File này giúp AI chọn đúng kiểu dashboard trước khi build, thay vì mặc định lao vào dashboard sales chỉ vì nhìn thấy vài cột số.

## Quy tắc chọn blueprint

Trước khi build dashboard đầu tiên cho một dataset lạ, AI phải xác định:

- dữ liệu đang ở grain nào
- metric chính thuộc nhóm nào
- người xem dashboard là ai
- user muốn theo dõi điều gì

Nếu user chưa biết cần chart gì, AI phải đề xuất blueprint thay vì tự build luôn.

## Các blueprint mặc định nên đề xuất

### 1. Sales Executive

Dùng khi dữ liệu thiên về:

- revenue
- target / plan
- gross margin
- sales rep
- region
- channel
- category

Visual thường hợp:

- revenue trend
- target vs actual
- region performance
- category mix
- channel efficiency
- top / bottom sales reps

### 2. Finance / P&L

Dùng khi dữ liệu thiên về:

- revenue
- cost
- profit
- margin
- budget
- variance

Visual thường hợp:

- revenue / cost / profit trend
- budget vs actual
- margin bridge
- cost mix
- variance by business unit
- top unfavorable drivers

### 3. Operations

Dùng khi dữ liệu thiên về:

- throughput
- productivity
- SLA
- turnaround time
- utilization
- defects

Visual thường hợp:

- volume trend
- SLA attainment
- workload by team
- turnaround by stage
- defect or delay hotspots
- top bottlenecks

### 4. Inventory / Supply Chain

Dùng khi dữ liệu thiên về:

- stock on hand
- inbound / outbound
- fill rate
- days on hand
- stockout
- warehouse / SKU / supplier

Visual thường hợp:

- stock trend
- fill rate vs target
- inventory by warehouse
- stock aging
- stockout risk
- top low-cover SKUs

### 5. Audit / Compliance

Dùng khi dữ liệu thiên về:

- audit findings
- issue count
- severity
- compliance score
- overdue actions
- owner / department

Visual thường hợp:

- findings trend
- compliance score
- issue severity mix
- overdue actions
- department risk view
- top unresolved owners

## Cách hỏi khi user chưa biết cần dashboard gì

AI nên hỏi ngắn theo mẫu:

1. Dashboard này chủ yếu để theo dõi sales, finance, operations, inventory hay audit?
2. Người xem chính là ai?
3. Metric nào là quan trọng nhất?

Nếu vẫn chưa rõ, AI nên đề xuất 2-3 blueprint ngắn gọn để user chọn.

## Quy tắc dừng

Nếu chưa chốt blueprint, AI không được:

- dựng KPI cards cuối cùng
- dựng chart chính
- quyết định bộ slicer hoàn chỉnh
- suy diễn bộ measure business-critical
