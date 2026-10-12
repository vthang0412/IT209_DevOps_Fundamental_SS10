# Bài 2: Docker Single-stage

## 1. Mục tiêu
Đóng gói ứng dụng REST API Node.js/Express thành Docker Image bằng Dockerfile Single-stage.

## 2. Công nghệ
- Node.js 18 Alpine
- Express.js
- Docker

## 3. Docker Image
- Image: `hw-backend:v1`
- Container: `app-single-stage`
- Port mapping: `8080:3000`

## 4. Các bước thực hiện
1. Tạo ứng dụng REST API bằng Express.
2. Viết Dockerfile sử dụng một giai đoạn FROM.
3. Build image `hw-backend:v1`.
4. Chạy container `app-single-stage`.
5. Kiểm tra container, log và REST API.

## 5. Kết quả
- Docker Image được build thành công.
- Container chạy với trạng thái Up.
- API trả về HTTP 200 OK và JSON khi truy cập `http://localhost:8080/`.

## 6. Kết luận
Hoàn thành đóng gói và chạy thử nghiệm ứng dụng Web Backend bằng Docker Single-stage.