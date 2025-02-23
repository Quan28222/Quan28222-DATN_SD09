package com.example.duantn.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Table(name = "PhieuGiamGia")
@Entity
@NoArgsConstructor
@AllArgsConstructor
@Data
public class PhieuGiamGia extends BaseModel{
    @Column(name = "Ma")
    private String ma;

    @Column(name = "TenPhieu")
    private String tenPhieu;

    @Column(name = "GiaTriGiam")
    private Double giaTriGiam;

    @Column(name = "HinhThucGiam")
    private String hinhThucGiam;

    @Column(name = "GiaTienXetDieuKien")
    private Double giaTienXetDieuKien;

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "NgayBatDau")
    private Date ngayBatDauApDung;

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "NgayKetThuc")
    private Date ngayKetThucApDung;

    @Column(name = "soLuong")
    private Integer soLuong;

}