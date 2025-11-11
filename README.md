# Webnangcao
**Link source code dự án**

https://github.com/BuiDuc21012492/Webnangcao/tree/master
# Mục tiêu
- Xây dựng hệ thống quản lý công việc trực tuyến giúp tối ưu hóa quy trình làm việc.
- Hỗ trợ admin trong việc quản lý thành viên, chức vụ và danh sách công việc.
- Cung cấp giao diện trực quan, dễ sử dụng, vận hành trơn tru trên nhiều thiết bị.
- Cho phép thành viên tự quản lý công việc cá nhân, giúp nâng cao hiệu suất làm việc.
- Ghi lại nhật kí hoạt động

### Sơ đồ chức năng
![Image](https://github.com/user-attachments/assets/17e42b18-db22-4e7d-a8c6-b731ed62f49e)

### Usecase tổng quát
![Image](https://github.com/user-attachments/assets/e6c89789-d165-4e8b-8af1-cd378297fb33)

## Mô tả usecase

### QL người dùng
![Image](https://github.com/user-attachments/assets/1ae05cae-fb42-4843-b172-d0997b2a54d4)

**Actor: ADMIN**

**Admin** thực hiện các chức năng: Đăng nhập, đăng xuất, thêm, xóa, sửa người dùng.

**Người quản lý, nhân viên** có thể chỉnh sửa thông tin cá nhân, đổi mật khẩu.
### Điều kiện tiên quyết:
Actor phải đăng nhập thành công vào hệ thống để thực hiện các chức năng.
### Kết quả:
Thành công: Truy cập chức năng mong muốn.
Thất bại: Hiển thị thông báo lỗi.
### Luồng sự kiện chính:
Extend Use Case: Đăng nhập, Đăng xuất, Đổi mật khẩu, Chỉnh sửa thông tin cá nhân.
Admin: Thêm, Xóa, Sửa người dùng.
### Luồng sự kiện phụ:
Actor nhấn Thoát, hệ thống đóng màn hình chức năng đang dùng.

### QL công việc
![Image](https://github.com/user-attachments/assets/ea51a998-b93a-47ef-9148-59cbaca0c211)

**Actor: Quản lý**

**Người quản lý** đăng nhập vào hệ thống để thực hiện các chức năng quản lý công việc.

### Điều kiện trước:
Đã đăng nhập thành công vào hệ thống.
### Điều kiện sau:
Thành công: Truy cập trang chức năng.
Thất bại: Hiển thị thông báo “Đăng nhập không thành công”.
### Luồng sự kiện chính:
Chọn chức năng Quản lý công việc.
### Thực hiện các thao tác:
Thêm/Sửa/Xóa Công việc
Thêm/Sửa/Xóa QA
Thêm/Sửa/Xóa Điểm
Thêm/Sửa/Xóa Đánh giá
### Luồng sự kiện phụ:
Nhấn nút Thoát, hệ thống hủy màn hình hiện tại.

## Sơ đồ hoạt động

### Đăng kí

![Image](https://github.com/user-attachments/assets/52c994b7-c8b3-4afc-8662-f5f757c5936a)

### Đăng nhập

![Image](https://github.com/user-attachments/assets/d04082c6-144b-495e-b65c-480f4ad926fb)

### Quên mật khẩu

![Image](https://github.com/user-attachments/assets/046bfdcd-c26c-4d47-8bb0-9beea7ce65fe)

### Quản lý tài khoản

![Image](https://github.com/user-attachments/assets/53308bdb-3805-4973-9ca5-c19d9e4904fd)

# Giao diện

## Nhân viên

### Đăng nhập

![Image](https://github.com/user-attachments/assets/d784e3c3-7ea1-47bc-9220-7562876d0622)

### Màn hình chính

![Image](https://github.com/user-attachments/assets/5a8cd666-176d-4212-b691-01d38a2ed406)
 
### Màn hình công việc

![Image](https://github.com/user-attachments/assets/7aa24d57-d140-43f3-973c-93195063db5d)

### Thông tin chi tiết

![Image](https://github.com/user-attachments/assets/a9b6c034-7dc8-4578-8b7d-4f3a73d2cd75)

## Admin

### Danh sách nhân viên

![Image](https://github.com/user-attachments/assets/6d1c567c-d799-4a52-b97d-a01a3d505ff8)

### Sửa thông tin

![Image](https://github.com/user-attachments/assets/1761a188-07e9-407a-bc6d-0dc0eca22139)

### Thêm nhân viên

![Image](https://github.com/user-attachments/assets/ff120321-5fa8-40e2-991a-726cff924114)

### Thêm đơn vị

![Image](https://github.com/user-attachments/assets/7a9f4b11-b203-4afe-b5e0-683bbe232358)

### Quên mật khẩu

![Image](https://github.com/user-attachments/assets/5feaa55c-81d6-470e-8860-fec46a51d104)
