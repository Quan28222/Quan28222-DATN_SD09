package com.example.duantn.request;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class HoaDonSearch {
    private String maHoaDon;
    private String ngayBatDau;
    private String ngayKetThuc;
    private String hinhThucTT;
    private String trangThai;
    private Integer currentPage;
    private Integer pageLimit;
}
