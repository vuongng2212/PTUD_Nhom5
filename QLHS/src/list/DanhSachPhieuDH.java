package list;

import java.util.ArrayList;

import entity.ChiTietPhieuDH;
import entity.PhieuDatHang;

public class DanhSachPhieuDH {
	private ArrayList<PhieuDatHang> list;

	public DanhSachPhieuDH() {
		list = new ArrayList<PhieuDatHang>();
	}

	public String getDanhSach() {
		String s = "";
		for (PhieuDatHang pdh : list)
			s += pdh + "\n";
		return s;
	}

	public boolean them(PhieuDatHang pdh) {
		for (int i = 0; i < list.size(); i++)
			if (list.get(i).getMaDH().equalsIgnoreCase(pdh.getMaDH())) {
				return false;
			}
		list.add(pdh);
		return true;
	}

	public boolean xoa(int index) {
		if (index >= 0 && index <= list.size() - 1) {
			list.remove(index);
			return true;
		} else
			return false;
	}


	public boolean update(PhieuDatHang pdh) {
		for (int i = 0; i < list.size(); i++)
//			private Date doB;
//			private Boolean gioiTinh;
//			private String SDT, diaChi, email, chucVu;
			if (list.get(i).getMaDH().equalsIgnoreCase(pdh.getMaDH())) {
				list.get(i).setMaNV(pdh.getMaNV());
				list.get(i).setNgayDH(pdh.getNgayDH());
				list.get(i).setChietKhau(pdh.getChietKhau());
				return true;
			}
		return false;
	}

	public ArrayList<PhieuDatHang> getList() {
		return list;
	}

	public int getCount() {
		return list.size();
	}
	public void clear() {
	    for (int i = 0; i < list.size(); i++)
	    	list.remove(i);
	}
}
