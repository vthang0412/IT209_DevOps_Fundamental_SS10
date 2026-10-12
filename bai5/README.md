# Bài 5: Docker Compose và Environment Variables

## 1. Mục tiêu
Tự động hóa triển khai Backend và PostgreSQL bằng Docker Compose v2.

## 2. Thành phần
- Backend: `hw-backend:v1`
- Database: `postgres:15-alpine`
- Environment: `.env`, `.env.example`
- Network: `backend-net`
- Volume: `pgdata`

## 3. Thực hiện
1. Khai báo cấu hình dịch vụ trong `docker-compose.yml`.
2. Tách biến môi trường sang `.env`.
3. Tạo `.env.example` và `.gitignore`.
4. Kiểm tra cấu hình bằng `docker compose config`.
5. Khởi chạy bằng `docker compose up -d`.
6. Kiểm tra bằng `docker compose ps`, `docker compose logs -f` và curl.

## 4. Kết quả
- Docker Compose tự tạo Network và Named Volume.
- Backend và PostgreSQL chạy trên cùng Network.
- Backend sử dụng hostname `database` để định danh Database.
- API trả về HTTP 200 OK.
- Dữ liệu Database được lưu trong Named Volume `pgdata`.

## 5. Kết luận
Hoàn thành tự động hóa triển khai đa container bằng Docker Compose v2 và quản lý cấu hình bằng biến môi trường.