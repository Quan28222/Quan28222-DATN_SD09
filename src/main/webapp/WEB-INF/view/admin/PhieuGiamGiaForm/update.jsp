<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

<!doctype html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Sửa phiếu giảm giá</title>
    <meta name="description" content="Ela Admin - HTML5 Admin Template">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="https://i.imgur.com/QRAUqs9.png">
    <link rel="shortcut icon" href="https://i.imgur.com/QRAUqs9.png">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/normalize.css@8.0.0/normalize.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/pixeden-stroke-7-icon@1.2.3/pe-icon-7-stroke/dist/pe-icon-7-stroke.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.2.0/css/flag-icon.min.css">
    <link rel="stylesheet" href="/admin/assets/css/cs-skin-elastic.css">
    <link rel="stylesheet" href="/admin/assets/css/style.css">

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>

    <!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->
    <style>
        .messageError{
            color: red;
        }
    </style>
</head>
<body>
<!-- Left Panel -->
<jsp:include page="/WEB-INF/view/admin/layout/left_menu_admin.jsp"></jsp:include>
<!-- /Left Panel -->

<!-- Right Panel -->

<div id="right-panel" class="right-panel">

    <!-- Header-->
    <jsp:include page="/WEB-INF/view/admin/layout/header_admin.jsp"></jsp:include>
    <!-- Header-->

    <div class="breadcrumbs">
        <div class="breadcrumbs-inner">
            <div class="row m-0">
                <%--                <div class="col-sm-4">--%>
                <%--                    <div class="page-header float-left">--%>
                <%--                        <div class="page-title">--%>
                <%--                            <h1>Dashboard</h1>--%>
                <%--                        </div>--%>
                <%--                    </div>--%>
                <%--                </div>--%>
                <%--                <div class="col-sm-8">--%>
                <%--                    <div class="page-header float-right">--%>
                <%--                        <div class="page-title">--%>
                <%--                            <ol class="breadcrumb text-right">--%>
                <%--                                <li><a href="#">Dashboard</a></li>--%>
                <%--                                <li><a href="#">Quản lý giày</a></li>--%>
                <%--                                <li class="active">Sửa thông tin màu sắc</li>--%>
                <%--                            </ol>--%>
                <%--                        </div>--%>
                <%--                    </div>--%>
                <%--                </div>--%>
            </div>
        </div>
    </div>

    <div class="content" style="margin-bottom: 50px;">
        <div class="animated fadeIn">
            <div class="card col-lg-12">
                <div class="card-header">
                    <div>
                        <strong class="card-title" ><h3>Sửa thông tin phiếu giảm giá</h3></strong>
                    </div>

                </div>
                <div class="card-body">
                    <sf:form action="/phieu-giam-gia/sua/${phieuGiam.id}" method="post" modelAttribute="phieuGiam" class="row">
                        <div class="col-lg-6">
                            <span>Mã (<i class="fa fa-asterisk" style="color: red;"></i>)</span>
                            <sf:input path="ma" type="text" style="margin-top: 5px;" readonly="true" class="form-control"/>
                                <%--                            <sf:errors path="ma" cssClass="text-danger"/>--%>
                                <%--                            <c:if test="${trungMa==true}">--%>
                                <%--                                <p class="text-danger">Mã phiếu đã có trong hệ thống, vui lòng nhập mã mới</p>--%>
                                <%--                            </c:if>--%>
                        </div>
                        <div class="col-lg-6">
                            <span>Tên phiếu(<i class="fa fa-asterisk" style="color: red;"></i>)</span>
                            <sf:input path="tenPhieu" type="text" style="margin-top: 5px;" class="form-control"/>
                            <sf:errors path="tenPhieu" cssClass="text-danger"/>
                            <c:if test="${trungTen==true}">
                                <p class="text-danger">Tên phiếu giảm giá đã có trong hệ thống, vui lòng nhập tên mới</p>
                            </c:if>
                        </div>
                        <div class="col-lg-6" style="margin-top: 20px;">
                            <span>Giá trị giảm (<i class="fa fa-asterisk" style="color: red;"></i>)</span>
                            <sf:input id="giaTriGiam" path="giaTriGiam" style="margin-top: 5px;" type="number" class="form-control"/>
                            <sf:errors path="giaTriGiam" cssClass="text-danger"/>
                            <c:if test="${giaTriGiamNegative==true}">
                                <p class="text-danger">Giá trị giảm không được nhập số âm</p>
                            </c:if>

                        </div>
                        <div class="col-lg-6" style="margin-top: 20px;">
                            <span>Số lượng (<i class="fa fa-asterisk" style="color: red;"></i>)</span>
                            <sf:input id="soLuong" path="soLuong" style="margin-top: 5px;" type="number" class="form-control"  />
                            <sf:errors path="soLuong" cssClass="text-danger"/>

                            <c:if test="${soLuongNegative==true}">
                                <p class="text-danger">Giá trị giảm không được nhập số âm</p>
                            </c:if>
                                <%--                            <div th:if =  th:errors="*{giaTriGiam}" class="invalid-feedback"></div>--%>

                        </div>
                        <div class="col-lg-6" style="margin-top: 20px;">
                            <span>Hình thức giảm (<i class="fa fa-asterisk" style="color: red;"></i>)</span>
                            <sf:input id="hinhThucGiam" path="hinhThucGiam" style="margin-top: 5px;" type="text" class="form-control"  />
                            <sf:errors path="hinhThucGiam" cssClass="text-danger"/>
                        </div>
                        <div class="col-lg-6" style="margin-top: 20px;">
                            <span>Giá tiền xét điều kiện (<i class="fa fa-asterisk" style="color: red;"></i>)</span>
                            <sf:input id="giaTienXetDieuKien" path="giaTienXetDieuKien" style="margin-top: 5px;" type="number" class="form-control"  />
                            <sf:errors path="giaTienXetDieuKien" cssClass="text-danger"/>

                            <c:if test="${dieuKienNegative==true}">
                                <p class="text-danger">điều kiện không được nhập số âm</p>
                            </c:if>
                        </div>
                        <div class="col-lg-6" style="margin-top: 20px;">
                            <span>Ngày bắt đầu (<i class="fa fa-asterisk" style="color: red;"></i>)</span>
                            <sf:input path="ngayBatDauApDung" name="ngayBatDauApDung" type="datetime-local"  class="form-control"
                                      required="required"/>
                            <sf:errors path="ngayBatDauApDung" type="datetime-local"  cssClass="text-danger"/>
                                <%--                            <c:if test="${not empty errors and errors.getFieldError('ngayBatDauApDung')}">--%>
                                <%--                                <p class="text-danger">${errors.getFieldError('ngayBatDauApDung').defaultMessage}</p>--%>
                                <%--                            </c:if>--%>

                        </div>
                        <div class="col-lg-6" style="margin-top: 20px;">
                            <span>Ngày kết thúc (<i class="fa fa-asterisk" style="color: red;"></i>)</span>
                            <sf:input path="ngayKetThucApDung" name="ngayKetThucApDung" type="datetime-local" class="form-control"
                                      required="required"/>
                            <sf:errors path="ngayKetThucApDung" cssClass="text-danger"/>
                                <%--                            <c:if test="${not empty errors and errors.getFieldError('ngayKetThucApDung')}">--%>
                                <%--                                <p class="text-danger">${errors.getFieldError('ngayKetThucApDung').defaultMessage}</p>--%>
                                <%--                            </c:if>--%>

                        </div>
                        <%--                        <div class="col-lg-6" style="margin-top: 20px;">--%>
                        <%--                            <span>Trạng thái (<i class="fa fa-asterisk" style="color: red;"></i>)</span>--%>
                        <%--                            <br>--%>
                        <%--                            <sf:radiobutton path="trangThai" value="1" checked="true" /> Hoạt động--%>
                        <%--                            <sf:radiobutton path="trangThai" value="0" /> Ngưng hoạt động--%>
                        <%--                            <sf:errors path="trangThai" cssClass="text-danger"/>--%>

                        <%--                        </div>--%>

                        <div class="col-lg-8" style="margin-top: 20px;">
                            <c:if test="${messageSuccess==true}">
                                <%--                                style="z-index: 9999; position: fixed; top: 10px; right: 10px; width: 350px;"--%>
                                <div id="messageAlertSuccess" class="alert alert-primary alert-dismissible "
                                     style="width: 300px;">

                                    <button type="button" class="close" data-dismiss="alert">&times;</button>
                                    <i class="menu-icon fa fa-check"></i> Sửa  dữ liệu thành công!
                                </div>

                                <script>
                                    // Lấy thẻ alert
                                    var alert = document.getElementById('messageAlertSuccess');

                                    // Ẩn thẻ alert sau 3 giây
                                    setTimeout(function () {
                                        alert.style.display = 'none';
                                    }, 3000); // 3000 milliseconds tương ứng với 3 giây
                                </script>
                            </c:if>
                        </div>
                        <div class="col-lg-4" style="margin-top: 20px; ">
                            <button class="btn btn-success"><i class="menu-icon fa fa-plus"></i> </a> Sửa</button>
                            <a href="/phieu-giam-gia/hien-thi" class="btn btn-secondary" style="margin-left: 10px;"> <i
                                    class="menu-icon fa fa-undo"></i> Quay lại</a>
                        </div>
                    </sf:form>
                </div>
            </div>
        </div><!-- .animated -->
    </div><!-- .content -->

    <div class="clearfix"></div>

    <!-- footer -->
    <jsp:include page="/WEB-INF/view/admin/layout/footer.jsp"></jsp:include>
    <!--/ footer -->

</div><!-- /#right-panel -->

<!-- Right Panel -->

<!-- Scripts -->
<script src="https://cdn.jsdelivr.net/npm/jquery@2.2.4/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.4/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery-match-height@0.7.2/dist/jquery.matchHeight.min.js"></script>
<script src="/admin/assets/js/main.js"></script>

<script>
    // Sử dụng JavaScript để đặt giá trị của trường ngày thành ngày hôm nay
    document.getElementById('dateToday').valueAsDate = new Date();
</script>
</body>
</html>
