package kr.co.itcen.guestbook.daotest;

import java.util.Calendar;
import java.util.Date;

import kr.co.itcen.guestbook.dao.GuestBookDao;
import kr.co.itcen.guestbook.vo.GuestBookVo;

public class GuestBookDaoTest {

	public static void main(String[] args) {
		insertGuestBook();
		selectGuestBook();
	}
	private static void insertGuestBook() {
		GuestBookDao dao = new GuestBookDao();
		GuestBookVo vo = new GuestBookVo();
		vo.setName("김준호");
		vo.setPassword("1234");
		vo.setText("하기싫어");
		dao.insert(vo);
	}
	private static void selectGuestBook() {
		GuestBookDao dao=new GuestBookDao();
		for(GuestBookVo vo: dao.selectAll())
			System.out.println(vo);
	}
}
