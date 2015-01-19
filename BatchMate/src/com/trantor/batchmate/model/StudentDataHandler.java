package com.trantor.batchmate.model;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.trantor.batchmate.model.Student;

import net.datatables.wrapper.AjaxRequest;
import net.datatables.wrapper.IDataHandler;


public class StudentDataHandler implements IDataHandler<Student> {
	List<Student> list;
	int itotalRecords;
	int iTotalDisplay;
	
	public StudentDataHandler() {
		list = getAllStudents();
		itotalRecords = iTotalDisplay = list.size();
	}
	@Override
	public List<Student> getListData(AjaxRequest tableRequest,
			HttpServletRequest request) {
		return filterStudents(tableRequest);
	}

	@Override
	public int getITotalRecords() {
		return itotalRecords;
	}

	@Override
	public int getITotalDisplayRecords() {
		return iTotalDisplay;
	}
	
	
	
	//###################3Example data #########################3333
	public static List<Student> filterStudents(AjaxRequest tableReq) {

		List<Student> students = getAllStudents();
		//if request equals null means datatable is inited as static table.
		if (tableReq != null) {
			List<Student> tmpStudents = new ArrayList<>();
			for (int i = tableReq.iDisplayStart; i < students.size()
					&& i <= tableReq.iDisplayStart + tableReq.iDisplayLength; i++) {
				tmpStudents.add(students.get(i));
			}
			return tmpStudents;
		} else {
			return students;
		}
	}
	

	public static List<Student> getAllStudents() {
		List<Student> students = new ArrayList<Student>();
		students.add(new Student(1, "ctu3an", 30, "120070903", null));
		students.add(new Student(2, "tcua4n", 31, "210070902", "wNqo Trang Lon3"));
		students.add(new Student(3, "1tcuan", 32, "201070901", "Noq Trang Lon4"));
		students.add(new Student(4, "t2ucan", 33, "200170904", "Nwo qTrang Lon5"));
		students.add(new Student(5, "tu3acn", 34, "200710905", "Now Tqrang Lon6"));
		students.add(new Student(6, "tcua4n", 35, "200701906", "No wTrqang Lon7"));
		students.add(new Student(7, "tucan5", 36, "200709107", "No Twraqng Lon8"));
		students.add(new Student(8, "tu6can", 36, "200709017", "No Trwanqg Lon8"));
		students.add(new Student(9, "tu7acn", 36, "520070907", "No Trawngq Lon8"));
		students.add(new Student(10, "tu8acn", 36, "520070907", "No Trawngq Lon8"));
		students.add(new Student(11, "htu9an", 30, "250070903","No Trangww qLong1"));
		students.add(new Student(12, "thu0an", 31, "205070902", "No Trang wLqon3"));
		students.add(new Student(13, "11htuan", 32, "205070901","No Trang Lwqon4"));
		students.add(new Student(14, "tu1h2an", 33, "200570904","No Trang Lowqn5"));
		students.add(new Student(15, "tuanh13", 34, "200750905","No Trang Lonwq6"));
		students.add(new Student(16, "qtuanh", 35, "200709506", "No Trang Lon7w"));
		students.add(new Student(17, "jtwuan", 36, "200709057", "tNo Trang Lon8"));
		students.add(new Student(18, "tuean", 36, "200709075", "Neto Trang Lon8"));
		students.add(new Student(19, "tjuarn", 36, "820070907", "Neot Trang Lon8"));
		students.add(new Student(20, "tujant", 36, "280070907", "Noee tTrang Lon8"));
		students.add(new Student(21, "etujjan", 30, "208070903","No Ttrang Long1"));
		students.add(new Student(22, "teuanj", 31, "200870902", "No Teertang Lon3"));
		students.add(new Student(23, "ktuean", 32, "200780901", "No Traetng Lon4"));
		students.add(new Student(24, "tkuaen", 33, "200708904", "No Tranetg Lon5"));
		students.add(new Student(25, "tukane", 34, "200709805", "No Tranget Lon6"));
		students.add(new Student(26, "rtukan", 35, "200709086", "No Trang etLon7"));
		students.add(new Student(27, "ttuakn", 36, "920070907", "No Trang Leton8"));
		students.add(new Student(28, "tuyank", 36, "290070907", "No Trang Loetn8"));
		students.add(new Student(29, "ltuaun", 36, "209070907", "No Trang Lonet8"));
		students.add(new Student(30, "tluani", 36, "200970907", "nNo Trang Lone8"));
		students.add(new Student(31, "ytluan", 30, "200790903","Nno Trang Long1e"));
		students.add(new Student(32, "tyulan", 31, "200709902", "rNon Trang Lon3"));
		students.add(new Student(33, "tuyaln", 32, "200709901", "Nro nTrang Lon4"));
		students.add(new Student(34, "tuaynl", 33, "200709094", "Nor Tnrang Lon5"));
		students.add(new Student(35, "touany", 34, "200709059", "No rTrnang Lon6"));
		students.add(new Student(36, "tpouan", 35, "620070906", "No Trranng Lon7"));
		students.add(new Student(37, "tupoan", 36, "260070907", "No Trranng Lon8"));
		students.add(new Student(38, "tuapon", 36, "206070907", "No Trarngn Lon8"));
		students.add(new Student(39, "tuanpo", 36, "200670907", "No Trang nLon8"));
		students.add(new Student(40, "ptuaxn", 36, "200760907", "No Tranrrg Lnon8"));
		students.add(new Student(41, "yptuan", 30, "200790903","Nno Trang rLong1"));
		students.add(new Student(42, "typuan", 31, "200709902", "Non Trang rLon3"));
		students.add(new Student(43, "tuypan", 32, "200709901", "No nTrang Lron4"));
		students.add(new Student(44, "tuaypn", 33, "200709094", "No Tnrang Lorn5"));
		students.add(new Student(45, "tuany", 34, "200709059", "No Trnang Lon6r"));
		students.add(new Student(46, "'tpuan", 35, "620070906", "No Tranng Lon7"));
		students.add(new Student(47, "t'upan", 36, "260070907", "hNo Tranng Lon8"));
		students.add(new Student(48, "tu'apn", 36, "206070907", "Nho Trangn Lon8"));
		students.add(new Student(49, "tua'np", 36, "200670907", "No Trang nLon8"));
		students.add(new Student(50, "tuaxln", 36, "200760907", "Nohh Trang Lnon8"));
		students.add(new Student(51, "ytuanl", 30, "200790903","Nno Thrang Long1"));
		students.add(new Student(52, "ktyuan", 31, "200709902", "Non Thrang Lon3"));
		students.add(new Student(53, "tuyan", 32, "200709901", "No nTrahng Lon4"));
		students.add(new Student(54, "tkuayn", 33, "200709094", "No Tnrahng Lon5"));
		students.add(new Student(55, "tukany", 34, "200709059", "No Trnanhg Lon6"));
		students.add(new Student(56, "tpukan", 35, "620070906", "No Tranngh Lon7"));
		students.add(new Student(57, "tupakkn", 36, "260070907", "No Tranngh Lon8"));
		students.add(new Student(58, "jtuapn", 36, "206070907", "No Trangn Lhon8"));
		students.add(new Student(59, "tjuanp", 36, "200670907", "No Trang nLohn8"));
		students.add(new Student(60, "tujaxn", 36, "200760907", "No Trang Lnonh8"));
		students.add(new Student(61, "tu3jan", 30, "120070903", "qNo Trang Longh1"));
		students.add(new Student(62, "tua4n", 31, "210070902", "iNqo Trang Lon3"));
		students.add(new Student(63, "1tuajjn", 32, "201070901", "Noq Trang Lon4"));
		students.add(new Student(64, "qt2uan", 33, "200170904", "Nio qTrang Lon5"));
		students.add(new Student(65, "tqu3an", 34, "200710905", "bNoi Tqrang Lon6"));
		students.add(new Student(66, "tuqa4n", 35, "200701906", "No iTrqang Lon7"));
		students.add(new Student(67, "tuaqn5", 36, "200709107", "Nbo Tiraqng Lon8"));
		students.add(new Student(68, "tu6aqn", 36, "200709017", "Nob Trianqg Lon8"));
		students.add(new Student(69, "tu7anq", 36, "520070907", "No bTraingq Lon8"));
		students.add(new Student(70, "wtu8an", 36, "520070907", "No Tbbranigq Lon8"));
		students.add(new Student(71, "twu9an", 30, "250070903","No Trang iqLong1"));
		students.add(new Student(72, "tuw0an", 31, "205070902", "No Trabbng iLqon3"));
		students.add(new Student(73, "11twuan", 32, "205070901","No Trang Liqon4"));
		students.add(new Student(74, "tu12wan", 33, "200570904","No Trangbb Loiqn5"));
		students.add(new Student(75, "tuan1w3", 34, "200750905","No Trang Lboniq6"));
		students.add(new Student(76, "eqtuan", 35, "200709506", "No Trang Lon7i"));
		students.add(new Student(77, "tewuan", 36, "200709057", "tNo Trang Lbon8i"));
		students.add(new Student(78, "tueean", 36, "200709075", "Nto Trang Lobn8"));
		students.add(new Student(79, "tuaern", 36, "820070907", "Not Trang Lonb8"));
		students.add(new Student(80, "tuanet", 36, "280070907", "nNo tTrang Lon8"));
		students.add(new Student(81, "errtuane", 30, "208070903","No Ttrang Long1"));
		students.add(new Student(82, "teuan", 31, "200870902", "Nonn Trtang Lon3"));
		students.add(new Student(83, "tueran", 32, "200780901", "No Tratng Lon4"));
		students.add(new Student(84, "tuaern", 33, "200708904", "No nnTrantg Lon5"));
		students.add(new Student(85, "tuaner", 34, "200709805", "No Trnangt Lon6"));
		students.add(new Student(86, "rttuan", 35, "200709086", "No Tranng tLon7"));
		students.add(new Student(87, "tttuan", 36, "920070907", "No Trang Lton8"));
		students.add(new Student(88, "tuytan", 36, "290070907", "No Tranng Lotn8"));
		students.add(new Student(89, "tuautn", 36, "209070907", "No Trangn Lont8"));
		students.add(new Student(90, "tuani", 36, "200970907", "nNo Trang nLon8"));
		students.add(new Student(91, "aytuant", 30, "200790903","Nno Trang nLong1"));
		students.add(new Student(92, "tayuan", 31, "200709902", "Non Trang Lnon3"));
		students.add(new Student(93, "tuayan", 32, "200709901", "No nTrang Lonnn4"));
		students.add(new Student(94, "tuaayn", 33, "200709094", "No Tnrang Lon5n"));
		students.add(new Student(95, "tuanay", 34, "200709059", ",No Trnang Lon6"));

		students.add(new Student(232, "teuan", 31, "200870902", "No Trtang Lon3f"));
		students.add(new Student(233, "ktuean", 32, "200780901", "No Tratng Lon4f"));
		students.add(new Student(234, "tkuaen", 33, "200708904", "No Trantg Lon5"));
		students.add(new Student(235, "tukane", 34, "200709805", "No Trangt Lon6"));
		students.add(new Student(236, "rtukan", 35, "200709086", "No Trang tLon7"));
		students.add(new Student(237, "ttuakn", 36, "920070907", "No Trang Lton8"));
		students.add(new Student(238, "tuyank", 36, "290070907", "No Trang Lotn8"));
		students.add(new Student(239, "tuaun", 36, "209070907", "No Trang Lont8"));
		students.add(new Student(340, "ztuani", 36, "200970907", "nNo Trang Lon8"));
		students.add(new Student(341, "yztuan", 30, "200790903","Nno Trang Long1"));
		students.add(new Student(342, "tyzuan", 31, "200709902", "Non Trang Lon3"));
		students.add(new Student(343, "tuyzan", 32, "200709901", "No nTrang Lon4"));
		students.add(new Student(344, "tuayzn", 33, "200709094", "No Tnrang Lon5"));
		students.add(new Student(345, "tuanyz", 34, "200709059", "No Trnang Lon6"));
		students.add(new Student(346, "xtpuan", 35, "620070906", "No Tranng Lon7"));
		students.add(new Student(347, "tupan", 36, "260070907", "No Tranng Lon8"));
		students.add(new Student(348, "txuapn", 36, "206070907", "No Trangn Lon8"));
		
		students.add(new Student(160, "tuaxvn", 36, "200760907", "No Trang Lnon8"));
		return students;
	}
	

}

