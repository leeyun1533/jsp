package jspbook.ch07;

import java.util.ArrayList;
import java.util.List;

public class AddrManager {
	
	ArrayList<AddrBean>addrlist=new ArrayList<AddrBean>();
	
	public void add(AddrBean ab) {
		addrlist.add(ab);
	}
	
	//주소록을 삭제하는 메소드
	public void del(String username) {
		
	}
	public ArrayList<AddrBean> getAddrList(){
		return addrlist;
	}
	
}
