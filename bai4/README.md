# Bài 4: Custom Network & Named Volume

## 1. Mục tiêu
Tạo Docker Custom Bridge Network và Named Volume bằng Docker CLI.

## 2. Thành phần
- Network: `app-net`
- Volume: `db-data`
- Database: `db-server` (`postgres:15-alpine`)
- Backend: `app-container` (`hw-backend:v1`)

## 3. Thực hiện
1. Tạo Custom Bridge Network `app-net`.
2. Tạo Named Volume `db-data`.
3. Chạy PostgreSQL và mount Volume vào `/var/lib/postgresql/data`.
4. Chạy Backend trên cùng Network, sử dụng hostname `db-server`.
5. Kiểm tra DNS giữa Backend và Database.
6. Thêm dữ liệu, xóa container DB, tạo lại container với cùng Volume và xác minh dữ liệu.

## 4. Kết quả
- Backend và Database tham gia cùng Network `app-net`.
- Backend phân giải được hostname `db-server`.
- Dữ liệu PostgreSQL vẫn tồn tại sau khi xóa và tạo lại container DB.

## 5. Kết luận
Hoàn thành thực hành Custom Bridge Network và Named Volume bằng Docker CLI.