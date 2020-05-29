BLOC: viết tắt của business logic component
 - Tầng chuyên sử lý logic của app
 - Quản lý luôn state, ko cần gọi setState (Sử dụng stream: có 2 phần dữ liệu đầu vào và dữ liệu đầu ra)
    + sink: là phần dữ liệu đầu vào (kết quả trả về cho data)
    + stream: là phần dữ liệu đầu ra (kết quả khi truyền vào input)