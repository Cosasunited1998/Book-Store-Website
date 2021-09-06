-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 07, 2020 lúc 08:04 AM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `bookstorewebsite`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `kind_id` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `create_at` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `kind_id`, `status`, `create_at`) VALUES
(48, 'Tiếng trung', 49, 'publish', '2020-04-20'),
(47, 'Tiếng nhật', 49, 'publish', '2020-04-20'),
(46, 'Tiếng anh', 49, 'publish', '2020-04-20'),
(53, 'Marketing-Bán hàng', 50, 'publish', '2020-04-20'),
(52, 'Nhân vật-Bài học kinh doanh', 50, 'publish', '2020-04-19'),
(54, 'Quản lí-Lãnh đạo', 50, 'publish', '2019-12-13'),
(55, 'Tiểu thuyết', 55, 'publish', '2019-12-24'),
(56, 'Truyện ngắn', 55, 'publish', '2019-12-24'),
(57, 'Ngôn tình', 55, 'publish', '2019-12-24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `kinds`
--

CREATE TABLE `kinds` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `create_at` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `kinds`
--

INSERT INTO `kinds` (`id`, `name`, `status`, `create_at`) VALUES
(55, 'Khoa Học', 'publish', '2020-04-01'),
(50, 'Kinh tế', 'publish', '2020-04-02'),
(49, 'Ngoại ngữ', 'publish', '2020-03-17'),
(57, 'Tiểu Thuyết', 'publish', '2020-04-27'),
(58, 'Truyện ngắn', 'publish', '2020-03-24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `create_at` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `name`, `address`, `phone`, `total`, `status`, `create_at`) VALUES
(51, 'Quốc Đạt', 'KTX C', '0387655480', 298000, 'waiting_confirm', '2020-06-04'),
(52, 'Quốc Đạt', 'KTX B', '0957655480', 82000, 'waiting_confirm', '2020-06-04'),
(53, 'Ngọc', 'KTXB', '0387655480', 60000, 'waiting_confirm', '2020-06-04'),
(54, 'Xuân Tùng', 'KTX C', '0123456789', 306000, 'waiting_confirm', '2020-06-06'),
(55, 'Thanh Hiếu', '123 Hải Phòng', '0987654321', 42000, 'waiting_confirm', '2020-06-06'),
(56, 'Xuân Tùng', 'KTX', '0123456789', 178000, 'confirmed', '2020-06-06'),
(57, 'test', '@', '123', 87000, 'waiting_confirm', '2020-06-06'),
(58, 'Nguyễn Bảo Ngọc', 'Hải Phòng', '0123456789', 246000, 'cancel', '2020-06-07');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `create_at` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`id`, `product_id`, `quantity`, `order_id`, `status`, `create_at`) VALUES
(98, 107, 1, 58, 'publish', '2020-06-07'),
(97, 105, 1, 58, 'publish', '2020-06-07'),
(96, 106, 1, 58, 'publish', '2020-06-07'),
(95, 101, 1, 57, 'publish', '2020-06-06'),
(94, 105, 1, 56, 'publish', '2020-06-06'),
(93, 106, 1, 56, 'publish', '2020-06-06'),
(92, 74, 1, 55, 'publish', '2020-06-06'),
(91, 106, 1, 54, 'publish', '2020-06-06'),
(90, 105, 1, 54, 'publish', '2020-06-06'),
(89, 94, 1, 54, 'publish', '2020-06-06'),
(88, 97, 1, 54, 'publish', '2020-06-06'),
(87, 91, 1, 53, 'publish', '2020-06-04'),
(86, 106, 1, 52, 'publish', '2020-06-04'),
(85, 76, 1, 51, 'publish', '2020-06-04'),
(84, 107, 1, 51, 'publish', '2020-06-04'),
(83, 105, 1, 51, 'publish', '2020-06-04'),
(82, 94, 1, 51, 'publish', '2020-06-04'),
(78, 97, 1, 49, 'publish', '2019-12-24'),
(79, 96, 1, 49, 'publish', '2019-12-24'),
(80, 97, 2, 50, 'publish', '2019-12-24'),
(81, 74, 1, 50, 'publish', '2019-12-24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `categori_id` int(11) DEFAULT NULL,
  `special` tinyint(1) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `create_at` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `image`, `categori_id`, `special`, `status`, `create_at`) VALUES
(70, 'TIẾNG NHẬT CHO MỌI NGƯỜI', 'Giáo trình dạy tiếng Nhật Minna no Nihongo bộ mới. “Minna no Nihongo” là bộ giáo trình sơ cấp dành cho những ai muốn tìm hiểu về tiếng Nhật rất thông dụng tại Châu Á và Việt Nam.Sách gồm 2 tập với 50 bài học, mỗi bài bao gồm phần Mẫu câu, Ví dụ, Hội thoại, Luyện tập và các câu hỏi đặt ra để trả lời', 80000, '506jp3.jpg', 47, 1, 'publish', '2019-12-13'),
(66, 'CAMBRIDGE IELTS 13 ACADEMIC', 'Cambridge IELTS 13 chính là cuốn mới nhất được ra vào năm 2018. Đây chắc chắn là cuốn tài liệu mà rất nhiều sĩ tử luyện thi IELTS đang mong chờ trong năm nay.\r\n\r\nNếu đã tìm hiểu tương đối sâu về IELTS chắc các bạn cũng biết cấu trúc đề thi IELTS không thay đổi nhưng mỗi năm chủ đề trong IELTS đa dạng và khó hơn. Vì vậy, cuốn Cambridge IELTS 13 sẽ giúp bạn ôn luyện bộ đề IELTS mới nhất hiện nay, cập nhật kiến thức hữu ích, đảm bảo bạn sẽ không bị “tụt hậu”, giúp bạn luyện thi IELTS hiệu quả nhất.', 125000, '121img4.jpg', 46, -1, 'publish', '2019-12-13'),
(67, 'IELTS THE ULTIMATE VESION 1', 'Không như một số chứng chỉ Anh ngữ khác, khi luyện thi IELTS, học sinh cần ôn luyện cả 4 kỹ năng nghe, nói, đọc, viết cùng kiến thức ngữ pháp, từ vựng phong phú. Bởi vậy, IELTS luôn là lựa chọn top đầu của không ít bạn học muốn hoàn thiện khả năng sử dụng tiếng Anh như một ngôn ngữ thứ 2', 140000, '950img5.jpg', 46, -1, 'publish', '2019-12-13'),
(68, 'GIÁO TRÌNH LUYỆN THI NĂNG LỰC', 'Giáo Trình Luyện Thi Năng Lực Tiếng Nhật Try! - N1. Giáo Trình Luyện Thi Năng Lực Tiếng Nhật Try! - N1 là một phần trong bộ sách luyện thi Năng lực Nhật ngữ xuyên suốt từ N5 đến N1 đi kèm với phần giải thích bằng tiếng Việt. Bộ sách này được đặt tên là Try với mong muốn người học hãy thử học tiếng Nhật một cách nhẹ nhàng và hiệu quả dựa vào cuốn sách này.', 50000, '357japan_1.jpg', 47, -1, 'publish', '2019-12-13'),
(69, 'LUYỆN THI NĂNG LỰC TIẾNG NHẬT', 'Giáo Trình Luyện Thi Năng Lực Tiếng Nhật Try! - N2. Giáo Trình Luyện Thi Năng Lực Tiếng Nhật Try! - N2 được biên soạn bởi Hiệp hội văn hóa sinh viên Châu Á với 30 năm kinh nghiệm trong giáo dục tiếng Nhật. Đây là cuốn sách hệ thống lại nhằm giúp người học không những hiểu được mà còn có thể hiểu một cách cặn kẽ tất cả các mẫu văn phạm tương ứng với trình độ của kỳ thi Năng lực Nhật ngữ N2 và sử dụng nó một cách thành thạo', 75000, '271japan_2.jpg', 47, -1, 'publish', '2019-12-13'),
(63, 'GIẢI THÍCH NGỮ PHÁP TIẾNG ANH', 'Quyển sách này đưa ra những ngữ pháp và giải thích một cách chi tiết, cụ thể, phù hợp với bạn nào tự học như mình và còn hơn thế nữa. Nếu các bạn chưa biết thì cô Mai Lan Hương là tác giả của khác nhiều quyển bài tập tiếng Anh như này nên các bạn yên tâm và đặc biệt quyển này còn có đáp án cuối sách cũng khá tiện lợi nữa. Do đây là bằng tiếng việt nên chắc chắn sẽ không được đầy đủ 100% như của native speaker nhưng với 536 trang thì khá đầy đủ nha', 120000, '713img3.jpg', 46, 1, 'publish', '2019-12-13'),
(64, 'TỰ HỌC 2000 TỪ VỰNG TIẾNG ANH', 'Nhà ngôn ngữ học nổi tiếng D.A.Wilkins đã nói rằng “Without grammar, very little can be conveyed; without vocabulary, nothing can be conveyed.” (Không có ngữ pháp, rất ít thông tin có thể được truyền đạt; Không có từ vựng, không một thông tin nào có thể được truyền đạt cả). Vì thế, trong việc học một ngoại ngữ, thì từ vựng có thể xem như các tế bào nhỏ hình thành nên khả năng sử dụng ngoại ngữ của người học.', 50000, '417eng_1.jpg', 46, -1, 'publish', '2019-12-13'),
(65, 'CAMBRIDGE IELTS 14 ACADEMIC', 'Cambridge IELTS từ nhà xuất bản Cambridge, với 2 phiên bản Academic và General Training đã chính thức lên kệ tại Công ty Cổ phần Sách Việt Nam.\r\nVới đầy đủ 4 kỹ năng listening, reading, writing, speaking cùng với answer keys, Cambridge IELTS 14 sẽ cung cấp những kiến thức đầy đủ từ cấu trúc bài thi, các modul cần thiết, bài mẫu hay các kĩ năng cần thiết giúp bạn có thể sẵn sàng bước vào kì thi IELTS với những trải nghiệm tốt nhất, sát với thực tế nhất.', 150000, '85eng_2.jpg', 46, -1, 'publish', '2019-12-13'),
(71, 'TẬP VIẾT TIẾNG NHẬT CĂN BẢN', 'Tập Viết Tiếng Nhật Căn Bản Hiragana (Tái Bản 2018). Tập viết tiếng Nhật căn bản HIRAGANA (tái bản)Hệ thống chữ viết và phát âm tiếng Nhật khác hoàn toàn so với hệ thống chữ tiếng Việt, nên việc nhớ được bảng chữ cái tiếng Nhật là rất khó khăn đối với hầu hết những người mới học', 55000, '915jp_4.png', 47, -1, 'publish', '2019-12-13'),
(72, 'SỔ TAY GIÚP HỌC TIẾNG NHẬT', 'Tiếng Nhật là 1 trong 10 ngôn ngữ phổ biến trên thế giới với hơn 130 triệu người sử dụng. Ở Việt Nam, tiếng Nhật là ngôn ngữ phổ biến thứ 2 sau tiếng Anh với hơn 1.7 triệu người học. Học tiếng Nhật tốt giúp bạn có cơ hội làm việc ở môi trường chuyên nghiệp, hiện đại; dễ dàng đàm phán cơ hội kinh doanh; tạo dựng được nhiều mối quan hệ; đọc sách, xem phim mà không cần phiên dịch; khám phá và trải nghiệm văn hóa Nhật Bản...\r\nSổ Tay Học Tiếng Nhật được biên soạn nhằm đáp ứng nhu cầu bức thiết của đông đảo bạn đọc. Cuốn sách giới thiệu bảng chữ cái tiếng Nhật và cách viết; phát âm trong tiếng Nhật; các từ để hỏi; các câu nói thông dụng, cách đọc số; cách đọc giờ...', 45000, '962jb5.jpg', 47, -1, 'publish', '2019-12-13'),
(73, 'TẬP VIẾT CHỮ HÁN TỪ ĐẦU  TẬP 1', 'Dù bạn học bất kỳ một môn ngoại ngữ nào cũng đều trải qua một quá trình khó khăn và vất vả đòi hỏi người học phải có sự quyết tâm cao trong quá trình học tập, chỉ có sự cố gắng của bản thân mới có hiệu quả và đạt được thành công mong muốn. ', 60000, '971tau1.jpg', 48, -1, 'publish', '2019-12-13'),
(74, 'ĐÀM THOẠI TIẾNG TRUNG HOA', '301 câu đàm thoại tiếng Hoa (tái bản)\r\n  - Giáo trình \"301 câu đàm thoại tiếng Hoa\" được biên dịch và bổ sung dựa trên cơ sở cuốn sách giáo khoa \" Hán ngữ hội thoại 301\" do các chuyên gia Hán ngữ của học viện ngôn ngữ Bắc kinh biên soạn.\r\n - Giáo trình gồm 48 bài trong đó có 8 bài ôn tập, bao quát trên 800 từ thường dùng. Nội dung các bài tập gồm các phần \"Mẫu câu\", \"Đàm thoại\", \"Từ mới\", \"Chú ý từ ngữ\", \"Ngữ pháp\", \"bài tập\"... \r\n- Giáo trình biên soạn theo hướng \"mẫu câu\" để đi vào thực hành giao tiếp, nhưng cũng giới thiếu khái quát cấu trúc ngữ pháp của tiếng Hán hiện đại. \r\n ', 42000, '470tau2.jpg', 48, -1, 'publish', '2019-12-13'),
(75, 'GIÁO TRÌNH HÁN NGỮ TẬP 1', 'rong khi tiếng Việt và tiếng Anh được viết bằng chữ cái Latinh thì tiếng Trung được viết bằng chữ tượng hình nên rất khó khi bạn tự tìm hiểu ngôn ngữ này. Bạn là người mới bắt đầu học tiếng Trung, bạn muốn tự học nhưng không biết nên học những kiến thức nào, đâu là những kiến thức nền tảng phù hợp với trình độ của những người mới học. Và quan trọng nhất là bạn không biết được nên tìm học từ những tài liệu nào. Trên thị trường tài liệu học tiếng Trung thì nhiều nhưng tài liệu vừa bám sát chương trình dạy học, vừa cập nhật những điểm đổi mới cùng như được biên soạn dễ hiểu thì lại rất ít.', 65000, '31tau3.jpg', 48, -1, 'publish', '2019-12-13'),
(76, 'GIÁO TRÌNH HÁN NGỮ - TẬP 2', 'Với bất cứ một học viên tiếng Trung nào, cuốn sách giáo trình Hán ngữ là không thể thiếu được. Chương trình dạy tiếng Trung hiện nay tại các Trung hay trường học đều đang sử dụng bộ Giáo trình Hán ngữ phiên bản mới do Đại học Ngôn ngữ Bắc Kinh và tác giả Dương Ký Châu ủy quyền cho Công ty cổ phần sách MCBooks – chuyên sách ngoại ngữ –  phát hành độc quyền tại thị trường Việt nam. Bộ Giáo trình Hán ngữ mới này có thể nói là một phiên bản được làm lại nhưng vẫn giữ những cái hay của bộ Giáo trình cũ.', 56000, '645tau4.jpg', 48, 1, 'publish', '2019-12-13'),
(77, 'TỰ HỌC TIẾNG TRUNG THÀNH TÀI', 'Tiếng Trung phồn thể là như thế nào?\r\n\r\nTiếng Trung có 2 loại bao gồm: Tiếng trung Giản thể & Tiếng Trung Phồn Thể, trong đó Tiếng Trung Phồn thể là loại chữ truyền thống, hiện đang được sử dụng phổ biến ở Đài Loan. Chữ Phồn Thể rất khó học, nhưng một khi đã học thuộc rồi thì nhớ rất sâu và rất lâu. Chính vì vậy, ngay từ khi bắt đầu học tiếng Trung Phồn thể, chúng ta cần học chuẩn kiến thức và theo một lộ trình rõ ràng để không bị loạn kiến thức.', 100000, '975tau5.jpg', 48, 1, 'publish', '2019-12-13'),
(78, 'PHONG CÁCH QUẢN TRỊ PARK HANG SEO', 'Thành công của đội bóng đá U23 Việt Nam tranh cúp AFC 2018 hồi đầu năm và ASIAD 2018 gần đây để lại những giá trị và bài học kinh nghiệm sâu sắc từ nhiều góc nhìn khác nhau. Để đi đến thành công, có rất nhiều yếu tố, một trong số đó là cách tổ chức và vận hành, phong cách quản trị của tập thể.\r\n\r\nLê Huy Khoa - trợ lý của HLV Park Hang-seo - đã viết cuốn Phong cách quản trị Park Hang-seo: Bí quyết thành công của doanh nghiệp Hàn Quốc. Sách kể lại câu chuyện, cách làm việc, vận hành tạo ra kỳ tích U23 Việt Nam.\r\n\r\nSách nói về sự tương quan giữa bóng đá với quản trị doanh nghiệp, từ đó giúp các doanh nghiệp Việt Nam có những bài học kinh nghiệm quý giá trong việc tổ chức, quản trị đi đến thành công. Cách dùng người của HLV Park Hang Seo người ta thường thấy ở cách thay người hợp lí khi trận đấu đang cần những tình huống quyết định, đằng sau đó là một tài nghệ quản trị nhân sự và sử dụng tối ưu nguồn nhân lực hiện có của doanh nghiệp ở những tình huống kinh doanh trong thực tế. Tác giả cho rằng bóng đá thực ra không khác kinh doanh hay vận hành một tổ chức thông thường.', 90000, '495nv1.jpg', 52, -1, 'publish', '2019-12-13'),
(79, 'THINK AND GROW RICH - NGHĨ GIÀU VÀ LÀM GIÀU', 'Think and Grow Rich - Nghĩ giàu và Làm giàulà một trong những cuốn sách bán chạy nhất mọi thời đại. Đã hơn 60 triệu bản được phát hành với gần trăm ngôn ngữ trên toàn thế giới và được công nhận là cuốn sách tạo ra nhiều triệu phú hơn, một cuốn sách truyền cảm hứng thành công nhiều hơn bất cứ cuốn sách kinh doanh nào trong lịch sử.\r\n\r\nTác phẩm này đã giúp tác giả của nó, Napoleon Hill, được tôn vinh bằng danh hiệu “người tạo ra những nhà triệu phú”. Đây cũng là cuốn sách hiếm hoi được đứng trong top của rất nhiều bình chọn theo nhiều tiêu chí khác nhau - bình chọn của độc giả, của giới chuyên môn, của báo chí.\r\n\r\nLý do để Think and Grow Rich - Nghĩ giàu và Làm giàu có được vinh quang này thật hiển nhiên và dễ hiểu: Bằng việc đọc và áp dụng những phương pháp đơn giản, cô đọng này vào đời sống của mỗi cá nhân mà đã có hàng ngàn người trên thế giới trở thành triệu phú và thành công bền vững. Điều thú vị nhất là các bí quyết này có thể được hiểu và áp dụng bởi bất kỳ một người bình thường nào, hoạt động trong bất cứ lĩnh vực nào. Qua hơn 70 năm tồn tại, những đúc kết về thành công của Napoleon Hill đến nay vẫn không hề bị lỗi thời, ngược lại, thời gian chính là minh chứng sống động cho tính đúng đắn của những bí quyết mà ông chia sẻ.', 105000, '159nv2.jpg', 52, 1, 'publish', '2019-12-13'),
(80, '7 CÂU HỎI \"THẦN KỲ\" CỦA MỌI SẾP GIỎI', 'Làm sao lãnh đạo nhân viên hiệu quả hơn? Tác giả Michael Bungay Stanier đã đặt ra câu hỏi này và tự trả lời bằng 7 câu hỏi “thần kỳ” mà các nhà quản lý nên thường xuyên đặt ra cho nhân viên để thay đổi thói quen lãnh đạo.\r\n\r\nCó rất nhiều cuốn sách về huấn luyện nhân viên bị người đọc gấp lại khi mới đọc được một nửa, nhưng The Coaching Habit – 7 câu hỏi “thần kỳ” của mọi sếp giỏi sẽ hấp dẫn bạn từ trang đầu đến trang cuối.\r\n\r\nĐây không chỉ là một cuốn sách mà còn là tiếng nói dẫn đường cho bạn, là người dẫn lối bạn vươn đến sự vĩ đại. Trở thành một nhà lãnh đạo giỏi huấn luyện nhân viên là một tư duy, một lối sống chứ không đơn thuần là một kỹ năng. Tác giả Michael đã truyền tải xuất sắc thông điệp này đến bạn đọc bằng nghệ thuật kể chuyện thú vị, những ví dụ thực tiễn và các phương pháp đã được kiểm chứng. Đây là cuốn sách phải đọc đối với những nhà lãnh đạo mong muốn kiến tạo sự khác biệt.', 85000, '620nv3.jpg', 52, 1, 'publish', '2019-12-13'),
(81, 'TỪ TỐT ĐẾN VĨ ĐẠI - JIM COLLINS', 'Jim Collins cùng nhóm nghiên cứu đã miệt mài nghiên cứu những công ty có bước nhảy vọt và bền vững để rút ra những kết luận sát sườn, những yếu tố cần kíp để đưa công ty từ tốt đến vĩ đại. Đó là những yếu tố khả năng lãnh đạo, con người, văn hóa, kỷ luật, công nghệ… Những yếu tố này được nhóm nghiên cứu xem xét tỉ mỉ và kiểm chứng cụ thể qua 11 công ty nhảy vọt lên vĩ đại. Mỗi kết luận của nhóm nghiên cứu đều hữu ích, vượt thời gian, ý nghĩa vô cùng to lớn đối với mọi lãnh đạo và quản lý ở mọi loại hình công ty (từ công ty có nền tảng và xuất phát tốt đến những công ty mới khởi nghiệp), và mọi lĩnh vực ngành nghề. Đây là cuốn sách nên đọc đối với bất kỳ lãnh đạo hay quản lý nào!', 80000, '257nv4.jpg', 52, -1, 'publish', '2019-12-13'),
(82, 'DỐC HẾT TRÁI TIM (TÁI BẢN 2018)', 'Dốc hết trái tim là một quyển sách hay dành cho doanh nhân và mọi giám đốc hay lãnh đạo công ty. Tác giả đồng thời là người sáng lập của thương hiệu Starbucks, chia sẻ câu chuyện đầy cảm hứng về cuộc đời của ông từ khi còn đi học đến khi trở thành CEO của một thương hiệu nổi tiếng trên toàn thế giới. Độc giả sẽ tìm thấy nơi đây bài học về quản trị rất tuyệt vời, mà giá trị của nó vẫn còn vững vàng trong hiện tại. Những kinh nghiệm của tác giả về xây dựng một công ty có trách nhiệm xã hội đối với nhân viên, với cộng đồng và đối với môi trường sẽ cuốn hút lan truyền cảm hứng đến độc giả để họ áp dụng nó vào cuộc sống và công việc kinh doanh của mình.\r\n\r\nThành công của Công ty Cà phê Starbucks là một trong những câu chuyện kỳ diệu nhất về kinh doanh trong suốt nhiều thập kỷ. Một cửa hàng nhỏ ven sông ở Seattle rốt cuộc lại lớn mạnh và phát triển nên hơn một ngàn sáu trăm cửa hàng trên khắp thế giới và mỗi ngày lại có thêm một cửa hàng mới mọc lên. Tuyệt vời hơn cả, Starbucks đã thành công trong việc giữ vững cam kết về chất lượng sản phẩm ưu việt và mang lại những gì tốt đẹp nhất cho nhân viên của mình.\r\n\r\nTrong Dốc hết trái tim, CEO Howard Schultz chỉ ra các nguyên tắc định hình nên hiện tượng Starbucks, chia sẻ những tri thức mà ông đúc kết được từ cuộc hành trình biến cà phê ngon thành một phần tất yếu của trải nghiệm Mỹ. Các nhà tiếp thị, các nhà quản lý, và các doanh nhân sẽ khám phá ra cách biến lòng đam mê thành lợi nhuận trong cuốn biên niên ký của một công ty \"đã làm thay đổi mọi thứ... từ khẩu vị của chúng ta, ngôn ngữ của chúng ta cho đến bộ mặt của toàn khu Main Street\".', 75000, '459nv5.jpg', 52, 1, 'publish', '2019-12-13'),
(83, 'NHÀ LÃNH ĐẠO KHÔNG CHỨC DANH', 'Trong cuốn sách Nhà Lãnh Đạo Không Chức Danh, bạn sẽ học được:\r\n\r\nLàm thế nào để làm việc và tạo ảnh hưởng với mọi người như một siêu sao, bất chấp bạn đang ở vị trí nào\r\nMột phương pháp để nhận biết và nắm bắt cơ hội vào những thời điểm thay đổi\r\nNhững bí mật thật sự của sự đổi mới\r\nMột chiến lược tức thời để xây dựng đội nhóm tuyệt vời và trở thành một nhà cung cấp ngoạn mục của khách hàng\r\nNhững thủ thuật cứng rắn giúp trở nên mạnh mẽ cả về thể chất lẫn tinh thần để có thể đi đầu trong lĩnh vực của bạn\r\nNhững phương thức thực tế để đánh bại sự căng thẳng, xây dựng một ý chí bất bại, giải phóng năng lượng, và cân bằng cuộc sống cá nhân\r\nBất kể bạn làm gì trong tổ chức và cuộc sống hiện tại của bạn như thế nào, một thực tế quan trọng duy nhất là bạn có khả năng thể hiện năng lực lãnh đạo. Cho dù sự nghiệp hiện tại của bạn đang ở đâu, bạn vẫn luôn cần phải thể hiện những khả năng tột đỉnh của mình. Cuốn sách này sẽ hướng dẫn bạn làm thế nào để khai thác tối đa khả năng đó, cũng như thay đổi cuộc sống và thế giới xung quanh bạn.', 78000, '183qt1.jpg', 54, 1, 'publish', '2019-12-13'),
(84, 'NĂNG ĐOẠN KIM CƯƠNG (TÁI BẢN 2018)', 'Cuốn sách này là một câu chuyện về tác giả đã xây dựng đơn vị kim cương lại tại Andin International như thế nào khi sử dụng những nguyên tắc được thu thập từ trí tuệ xưa cổ của Phật giáo, từ cái không có gì thành một hoạt động khắp thế giới sinh nhiều triệu đô la mỗi năm. Phần lớn những quyết định và chính sách trong đơn vị của Tác giả trong suốt thời gian tác giả giữ chức Phó Chủ tịch đều được suy động bỏi những nguyên tắc mà bạn sẽ tìm thấy trong cuốn sách này.', 65000, '712qt2.jpg', 54, 1, 'publish', '2019-12-13'),
(85, 'ĐỪNG QUẢN LÝ, HÃY HUẤN LUYỆN', '“Đừng quản lý, hãy huấn luyện” sẽ làm nên cuộc cách mạng ở nơi làm việc của bạn. Nó chứa đựng những phương pháp đã qua kiểm chứng giúp gia tăng đáng kể tinh thần làm việc của nhân viên và giữ chân nhân tài, hướng dẫn cách tạo ra năng suất và lợi nhuận cao hơn cho công ty.\r\n“Nhờ áp dụng những chiến lược của Terri mà môi trường làm việc của công ty tôi đã thay đổi đáng kể. Nhân viên cảm thấy mình được trao quyền, tự tin và thoải mái làm việc hơn.”\r\nKris Kostin, Giám đốc Huấn luyện và phát triển nhân viên, thuộc Trung tâm Nhi khoa, Monmouth County.', 50000, '259qt3.jpg', 54, -1, 'publish', '2019-12-13'),
(86, 'QUẢN LÝ CHUỖI CUNG ỨNG FOR DUMMIES', 'Quản lý chuỗi cung ứng nghĩa là nhìn công ty như một hệ thống liên kết với nhau. Quản lý chuỗi cung ứng for dummies bàn về các công cụ, nguyên tắc và ngôn ngữ cần thiết để tìm hiểu xem các bộ phận trong chuỗi cung ứng của công ty khớp lại với nhau như thế nào. Cuốn sách cũng hướng dẫn cách lập kế hoạch và quản lý chuỗi cung ứng theo hướng giảm bớt chi phí, gia tăng lợi nhuận và giảm thiểu rủi ro.\r\n\r\nNhiều cuốn sách coi quản lý chuỗi cung ứng là một phần trong vận hành, logistics hoặc thu mua, nhưng cuốn sách này vận dụng một lối tiếp cận bao quát hơn, cho thấy các chức năng trên đều là những bộ phận liên kết với nhau trong cùng một hệ thống.\r\n\r\nTác giả sử dụng rất nhiều ví dụ thường nhật để giúp bạn đọc dễ hình dung từng bước trong bất kỳ chuỗi cung ứng nào, đồng thời chỉ ra rằng gần như mọi công ty đều có thể vận dụng các nguyên tắc trong chuỗi cung ứng.', 85000, '697qt4.jpg', 54, -1, 'publish', '2019-12-13'),
(87, 'KỶ NGUYÊN MỚI CỦA QUẢN TRỊ', 'Cuốn sách truyền tải kiến thức trải rộng đa dạng, đan xen những thông tin thực tiễn, tạo cho người đọc khả năng hình hài trong tư duy quản trị ở mọi cấp độ.', 300000, '148qt5.jpg', 54, -1, 'publish', '2019-12-13'),
(88, 'NGUYÊN TẮC THIẾT KẾ SLIDE CHUẨN TED', 'Tôi đang tạo ra slide này để giúp khán giả hay bản thân mình?\r\n\r\nThay vì bấu víu vào slide như một chỗ dựa và sử dụng theo kiểu giấy ghi chép cỡ lớn để có thể nhớ những điều cần nói, những diễn giả tài ba trên sân khấu TED sử dụng slide để giúp khán giả, chứ không phải bản thân họ. Bạn có muốn biết bí quyết thiết kế slide đằng sau những bài diễn thuyết nổi tiếng khắp thế giới này không?\r\n\r\nNguyên tắc thiết kế slide chuẩn TED không phải là sách vỡ lòng đầy đủ về việc thiết kế bài thuyết trình. Tuy nhiên, nó bao quát tất thảy các yếu tố cần thiết. Nguyên tắc thiết kế slide chuẩn TED được viết rất cô đọng phù hợp cho những người không muốn lãng phí thời gian vào những điều vô bổ. Trong cuốn sách này, bạn sẽ tìm thấy các ví dụ về những slide hấp dẫn từ các bài TED talk ấn tượng, cùng với đó là những nguyên tắc thiết thực mà bạn có thể vận dụng để khiến bài thuyết trình của mình trở nên sống động.\r\n\r\nDẫu nó không phải là sách vỡ lòng đầy đủ về việc thiết kế slide, nhưng nếu thực hiện đầy đủ các nguyên tắc trong sách, bạn cũng sẽ khiến bài thuyết trình của mình tốt hơn 90% số diễn giả – nói cách khác – bài của bạn sẽ nằm trong top 10% bài thuyết trình chất lượng nhất.', 60000, '162ma1.jpg', 53, -1, 'publish', '2019-12-13'),
(89, 'TÂM LÝ HỌC ĐÁM ĐÔNG (TÁI BẢN 2018)', 'Kể từ khi xuất bản lần đầu tại Việt Nam, cuốn sách này đã được tái bản lại rất nhiều lần.\r\n\r\nTác giả Gustave Le Bon (1841 - 1931) là nhà tâm lí học xã hội nổi tiếng người Pháp với lí thuyết về đám đông. Ông viết về nhiều lĩnh vực và có ảnh hưởng rất lớn trong xã hội Pháp đương thời. Những tác phẩm nền tảng nhất của Le Bon là Quy luật tâm lí về sự tiến hoá của các dân tộc (Les Lois psychologiques de l’évolution des peuples, 1894), Cách mạng Pháp và tâm lí học về các cuộc cách mạng (La Révolution française et la psychologie des révolutions, 1912) và Tâm lí học đám đông (La Psychologie des foules, 1895).\r\n\r\nTrong kiệt tác sáng rõ và sinh động này, Gustave Le Bon soi sáng những hoạt động vô thức – phi lý trí của các suy nghĩ tập thể cùng cảm xúc đám đông, qua đó đặt tư tưởng của đám đông đối nghịch với tư duy tự do và lý trí độc lập của cá nhân. Ông chỉ ra bằng cách nào hành vi của một cá nhân lại có tác động đến đám đông.\r\n\r\nCó rất nhiều sự thật được gợi mở nếu ta thấy hiểu về tâm lý đám đông, như Le Bon khẳng định : \"Kiến thức về ngành khoa học này soi rọi rất nhiều hiện tượng lịch sử và kinh tế, mà nếu thiếu thì những hiện tượng đó sẽ hoàn toàn không thể hiểu được.\"', 60000, '30ma2.jpg', 53, -1, 'publish', '2019-12-13'),
(90, 'NHỮNG CHÚ CHÓ BÁN HÀNG - SALESDOGS', 'Quyển sách bán chạy thế giới này, Những chú chó bán hàng, đã truyền cảm hứng cho những chủ doanh nghiệp nhỏ, những người bán hàng trực tiếp, và doanh nhân trên toàn thế giới trong gần một thập niên qua bởi vì thông điệp rõ ràng của quyển sách: Sự khác biệt giữa có “Ý Tưởng Triệu Đôla” với thật sự có hàng triệu đôla là khả năng bán ý tưởng, khái niệm, dịch vụ và sản phẩm của bạn. Cho dù bạn đang tìm kiếm công ăn việc làm, tuyển một đội ngũ xuất sắc và giúp họ đi đúng hướng, bán dịch vụ, tăng vốn, hay chỉ đơn giản thuyết phục bản thân rằng… bán hàng là kỹ năng số một của bạn.', 55000, '203ma3.jpg', 53, 1, 'publish', '2019-12-13'),
(91, 'NGHỆ THUẬT BÁN HÀNG CỦA NGƯỜI DO THÁI', ' Được mệnh danh là \"quốc gia khởi nghiệp\", Israel là nơi sản sinh ra nhiều doanh nhân thành công trong nhiều lĩnh vực và ở mọi quốc gia. Để làm được điều này, người Do Thái đã tiếp thu và thấm nhuần những triết lý và công cụ để tạo dựng uy tín, xây dựng và duy trì một cộng đồng khách hàng trung thành, thực hiện marketing sáng tạo và tối đa hóa doanh số cho công ty của mình – những phương pháp mà người Do Thái đã áp dụng từ rất lâu. Tất cả những điều này sẽ được tác giả Yaniv Zaid chia sẻ và lý giải trong quyển sách Nghệ thuật bán hàng của người Do Thái.', 60000, '872ma4.jpg', 53, -1, 'publish', '2019-12-13'),
(92, 'KỸ NĂNG BÁN HÀNG TUYỆT ĐỈNH', 'Kỹ năng bán hàng tuyệt đỉnh sẽ cho bạn đọc biết được những quy tắc bán hàng, vốn là điều kiện tiên quyết để gặt hái thành công trong bất kỳ lĩnh vực nào, với bất kỳ ai, bất kỳ ở đâu.\r\n\r\nTrong từng trang sách, tác giả Cardone giới thiệu và phân tích kỹ lưỡng những kỹ thuật và bước tiếp cận thiết yếu để bạn có thể làm chủ nghệ thuật bán hàng trong mọi tình huống. Bạn sẽ học được cách xử trí khi bị khách hàng từ chối, cách lật ngược tình thế, rút ngắn quy trình bán hàng và làm sao để bản thân ngày càng chuyên nghiệp hơn. Cardone cũng sẽ chỉ cho bạn thấy đâu là những yếu tố quyết định thành công, sẽ luôn giúp bạn:\r\n\r\n* Bán được hàng ngày cả trong điều kiện kinh tế khó khăn\r\n\r\n* Vượt qua nỗi e sợ không được khách hàng phản hồi\r\n\r\n* Làm đầy phễu bán hàng với các thương vụ mới\r\n\r\n* Luôn có thái độ tích cực, ngay cả khi đã bị khước từ\r\n\r\nKhông những thế, với nhiều nội dung chia sẻ những kinh nghiệm phong phú của một bậc thầy bán hàng lão luyện, Kỹ năng bán hàng tuyệt đỉnh sẽ thay đổi cách bạn nhìn nhận nghề bán hàng và cuộc sống.\r\n\r\n', 65000, '527ma5.jpg', 53, 1, 'publish', '2019-12-13'),
(93, 'DỰ ÁN ROSIE (TÁI BẢN 2018)', 'Tình yêu chưa bao giờ là một dạng thức khoa học chính xác. Tuy nhiên, có một người muốn chứng minh điều ngược lại. Chàng là Don Tillman, nhà di truyền học đẹp trai, năng lực trí tuệ có thừa nhưng con tim chưa từng thổn thức dù đã ở độ tuổi “băm mấy nhát”. Bất chấp tiền đề chưa-từng-hẹn-hò-được-với-bất-kì-cô-gái-nào-đến-lần-thứ-hai, chàng quyết tâm lập Dự Án Vợ, với niềm tin mãnh liệt rằng bản điều tra khảo sát dằng dặc đầy rẫy những thông số sẽ đưa nửa còn lại hoàn hảo đến với chàng. Đời không như mơ, hay cuộc đời đích thực là một giấc mơ?\r\n\r\nQuỹ đạo của nhà di truyền học đâm sầm phải “sao chổi” Rosie, cô nàng nghiên cứu sinh đầy bí ẩn có việc làm ngoài giờ tại một quán bar đồng tính. Cuộc sống “1+1=2” của Don bỗng chốc biến thành mớ hỗn độn khi chàng đồng ý giúp Rosie đi tìm cha ruột của nàng từ những căn cứ di truyền học mơ hồ.\r\n\r\nTừ đây không còn bản điều tra khảo sát, không còn thời khóa biểu chính xác từng giây từng khắc, cũng không còn chế độ dinh dưỡng tỉ mỉ từng ca-lo. Chỉ còn cuộc rượt đuổi của bất ngờ, những trượt dài của rung động, những cơn sóng của ghen tuông hờn giận, và cuối cùng, tất cả tan chảy trong những “phản ứng hóa học” kỳ diệu của hai tâm hồn.', 79000, '390tieu_1.jpg', 55, -1, 'publish', '2019-12-24'),
(94, 'NHÀ GIẢ KIM (TÁI BẢN NĂM 2017)', 'NHÀ GIẢ KIM là cuốn sách được in nhiều nhất chỉ sau Kinh Thánh. Cuốn sách của Paulo Coelho có sự hấp dẫn ra sao khiến độc giả không chỉ các xứ dùng ngôn ngữ Bồ Đào Nha mà các ngôn ngữ khác say mê như vậy?\r\n\r\nTiểu thuyết NHÀ GIẢ KIM của Paulo Coelho như một câu chuyện cổ tích giản dị, nhân ái, giàu chất thơ, thấm đẫm những minh triết huyền bí của phương Đông. Trong lần xuất bản đầu tiên tại Brazil vào năm 1988, sách chỉ bán được 900 bản. Nhưng, với số phận đặc biệt của cuốn sách dành cho toàn nhân loại, vượt ra ngoài biên giới quốc gia, Nhà giả kim đã làm rung động hàng triệu tâm hồn, trở thành một trong những cuốn sách bán chạy nhất mọi thời đại, và có thể làm thay đổi cuộc đời người đọc.', 78000, '712tieu_2.jpg', 55, -1, 'publish', '2019-12-24'),
(95, 'CẢM ƠN NGƯỜI LỚN (BÌA MỀM)', 'Cảm Ơn Người Lớn (Bìa Mềm)\r\n\r\nCảm ơn người lớn - một áng văn lãng mạn trong giọng hài hước đặc biệt “dành cho trẻ em, và những ai từng là trẻ em”..\r\n\r\nBạn sẽ gặp lại Mùi, Tủn, Tí sún, Hải cò… của Cho tôi xin một vé đi tuổi thơ, cùng chơi những trò chơi quen thuộc, và được đắm mình vào những ước mơ điên rồ, ngốc nghếch nhưng trong veo của tuổi mới lớn hồn nhiên và đầy ắp dự định.\r\n\r\nVà cả khi họ đã trưởng thành, bạo chúa thời gian đã vùng vẫy thế nào trong cuộc đời của những nhân vật mà bạn yêu quý…Hãy bắt đầu đọc từ bất cứ trang nào, có thể đọc bất cứ lúc nào, và cùng với bất cứ ai. Bạn sẽ nhận được món quà “n trong 1” của nhà văn Nguyễn Nhật Ánh: sẽ n lần thổn thức qua 1 cuốn sách 19 chương đầy ắp tình bạn ngây thơ, tình xóm giềng tốt lành nhân ái, tình yêu đắm đuối ngọt ngào…\r\nCảm ơn người lớn được Nguyễn Nhật Ánh đặt bút viết đúng sau 10 năm ra đời Cho tôi xin một vé đi tuổi thơ – cuốn sách bán chạy tới nay đã 400.000 bản.', 68000, '492tieu_3.jpg', 55, -1, 'publish', '2019-12-24'),
(96, 'NGỒI KHÓC TRÊN CÂY (TÁI BẢN 2017)', 'Ngồi Khóc Trên Cây (Tái Bản 2017)\r\n\r\nMở đầu là kỳ nghỉ hè tại một ngôi làng thơ mộng ven sông với nhân vật là những đứa trẻ mới lớn có vô vàn trò chơi đơn sơ hấp dẫn ghi dấu mãi trong lòng. \r\n\r\nMối tình đầu trong veo của cô bé Rùa và chàng sinh viên quê học ở thành phố có giống tình đầu của bạn thời đi học? Và cái cách họ thương nhau giấu giếm, không dám làm nhau buồn, khát khao hạnh phúc đến nghẹt thở có phải là câu chuyện chính?', 77000, '60tieu4.jpg', 55, -1, 'publish', '2019-12-24'),
(97, 'CHO TÔI XIN MỘT VÉ ĐI TUỔI THƠ', 'Trong Cho tôi xin một vé đi tuổi thơ, nhà văn Nguyễn Nhật Ánh mời người đọc lên chuyến tàu quay ngược trở lại thăm tuổi thơ và tình bạn dễ thương của 4 bạn nhỏ. Những trò chơi dễ thương thời bé, tính cách thật thà, thẳng thắn một cách thông minh và dại dột, những ước mơ tự do trong lòng… khiến cuốn sách có thể làm các bậc phụ huynh lo lắng rồi thở phào. Không chỉ thích hợp với người đọc trẻ, cuốn sách còn có thể hấp dẫn và thực sự có ích cho người lớn trong quan hệ với con mình.', 50000, '58tieu5.jpg', 55, -1, 'publish', '2019-12-24'),
(98, 'ĐỪNG ĐỢI KIẾP SAU MỚI QUAN TÂM NHAU', 'Đừng Đợi Kiếp Sau Mới Quan Tâm Nhau\r\n\r\n\"Đừng Đợi Kiếp Sau Mới Quan Tâm Nhau\" là món quà đặc biệt đánh dấu sự kết hợp trở lại của #DuPhong #MinhMẫn sau \"Những Gì Đã Qua Đừng Nghĩ Lại Quá Nhiều\", cuốn sách từng liên tục cháy hàng năm 2016 và vẫn được tái bản liên tục suốt 3 năm sau đó.\r\n\r\nVẫn là những lời tự sự, chiêm nghiệm của đôi bạn (giờ đã không còn) trẻ về những điều đã và đang đi qua trong cuộc đời mình. Cuốn sách này là những bài tản văn và thơ viết cho gia đình, những người thân thuộc nhất, những người thân đã khuất, viết cho thầy cô, bạn bè, viết cho những con vật nuôi từng coi là tri kỷ, viết cho những người rất thương nhưng chỉ còn lại đã từng, viết cho cả những ước mơ mãi chỉ còn là mơ ước...', 58000, '666tr1.jpg', 56, 1, 'publish', '2019-12-24'),
(99, 'LẤY TÌNH THÂM MÀ ĐỔI ĐẦU BẠC', 'Lấy tình thâm mà đổi đầu bạc\r\n\r\nVãn Tình vốn được biết đến là tác giả bộ ba best-seller Bạn đắt giá bao nhiêu?, Khí chất bao nhiêu – Hạnh phúc bấy nhiêu và Không tự khinh bỉ – Không tự phí hoài từng tạo nên một làn sóng thay đổi tư duy của hàng triệu phụ nữ.\r\n\r\nSự trở lại lần này của Vãn Tình với Lấy tình thâm mà đổi đầu bạc hứa hẹn mang đến cho độc giả những câu chuyện tình yêu, cuộc sống, hôn nhân, gia đình đầy gần gũi và ấm áp, đặc biệt được giải nghĩa thêm từ góc nhìn trực diện và đầy lý trí của một người đàn ông, cũng chính là chồng của tác giả.\r\n\r\nCuốn sách như một liều thuốc giúp xoa dịu những tâm hồn đang đau khổ trong tình yêu, tiếp thêm niềm tin và hi vọng cho những người đang theo đuổi một hôn nhân hạnh phúc.', 71000, '434tr2.jpg', 56, -1, 'publish', '2019-12-24'),
(100, 'CÀ PHÊ CÙNG TONY (TÁI BẢN 2017)', 'Cà Phê Cùng Tony\r\n\r\nCó đôi khi vào những tháng năm bắt đầu vào đời, giữa vô vàn ngả rẽ và lời khuyên, khi rất nhiều dự định mà thiếu đôi phần định hướng, thì CẢM HỨNG là điều quan trọng để bạn trẻ bắt đầu bước chân đầu tiên trên con đường theo đuổi giấc mơ của mình. Cà Phê Cùng Tony là tập hợp những bài viết của tác giả Tony Buổi Sáng. Đúng như tên gọi, mỗi bài nhẹ nhàng như một tách cà phê, mà bạn trẻ có thể nhận ra một chút gì của chính mình hay bạn bè mình trong đó: Từ chuyện lớn như định vị bản thân giữa bạn bè quốc tế, cho đến chuyện nhỏ như nên chú ý những phép tắc xã giao thông thường.\r\n\r\nChúng tôi tin rằng những người trẻ tuổi luôn mang trong mình khát khao vươn lên và tấm lòng hướng thiện, và có nhiều cách để động viên họ biến điều đó thành hành động. Nếu như tập sách nhỏ này có thể khơi gợi trong lòng bạn đọc trẻ một cảm hứng tốt đẹp, như tách cà phê thơm vào đầu ngày nắng mới, thì đó là niềm vui lớn của tác giả Tony Buổi Sáng.\r\n\r\nTony Buổi Sáng cũng là tác giả của Trên đường băng, tác phẩm hiện đã bán hơn 200.000 bản.', 58000, '535tr3.jpg', 56, -1, 'publish', '2019-12-24'),
(101, 'CÔ GÁI CÃI LỜI THƯỢNG ĐẾ', 'Cô Gái Cãi Lời Thượng Đế\r\n\r\n\r\n\"Tớ đã vì cậu mà tin vào tất cả những điều hoang đường nhất. Đã vì cậu mà lang thang năm châu bốn bể tìm cách về quá khứ. Đã vì cậu mà ngu ngốc làm hại bao nhiêu người. Đến cả cuộc sống của chính mình, bây giờ tớ chỉ có thể cắn răng mà chấp nhận những sứt mẻ. Vậy mà cậu chẳng hay chẳng biết gì hết… \"\r\n\r\n\r\nTrong cuộc đời này, đã có chàng trai hay cô gái nào khiến bạn yêu đến ngu muội, yêu đến thay đổi tâm tính, yêu đến cả bản thân cũng không màng, đến nỗi bạn có thể vứt bỏ tất cả vì người ấy chưa?\r\n\r\n“Cô gái cãi lời Thượng Đế” là câu chuyện nói về hành trình tìm cách thay đổi sự sắp đặt của vận mệnh của cô nàng Thụy Khanh - một nữ cường nhân điển hình;  vì Tuấn Minh - một chàng trai có thể khiến cô từ bỏ hiện tại tốt đẹp để tìm về quá khứ.', 87000, '163tr4.jpg', 56, -1, 'publish', '2019-12-24'),
(102, 'CHÚNG TA LÀ NHỮNG ĐỨA TRẺ CÔ ĐƠN', 'Chúng Ta Là Những Đứa Trẻ Cô Đơn\r\n\r\nBạn đã bao giờ trở về nhà sau một ngày làm việc dài, mệt mỏi, áp lực, nằm dài trên ghế với bộ đồ công sở, bật thật lớn một bản nhạc deep house, át hết tất cả những âm thanh xung quanh và tự huyễn hoặc với chính mình rằng “Mình sẽ ổn thôi”?\r\nBạn đã có một ngày như thế chưa?\r\n\r\nKhi còn bé, chúng ta mong đến ngày làm người lớn, để rồi những ngày đã khôn lớn, chúng ta lại ước ao có một giây phút được trở về như những ngày thơ bé. Chính những người trẻ như chúng ta lại cứ ao ước, khát khao được tự do trong những tháng ngày tuổi trẻ của mình. Chúng ta cứ bắt bản thân sống o ép, phải xoay theo quy luật của xã hội, phải chiều theo miệng người đời.\r\n\r\nTôi, bạn và rất nhiều người trẻ tuổi khác đang sống trong thời đại của sự vội vã. Vội vã ăn, vội vã ngủ, vội vã làm việc. Bởi vì chỉ chậm chạp một chút thôi, dường như chúng ta sẽ bị mọi người xung quanh vượt xa. Guồng quay cuộc sống vô tình cuốn chúng ta đi, biến chúng ta thành những đứa trẻ cô đơn giữa chốn phồn hoa. Để rồi đến đêm về, khi trở về căn phòng trọ nhỏ bé, bủa vây chúng ta chỉ là sự mệt mỏi, vô định về tương lai, về ngày mai không ai đoán trước.', 70000, '135tr5.jpg', 56, -1, 'publish', '2019-12-24'),
(103, 'MÃI MÃI LÀ BAO XA (TÁI BẢN 2019)', 'Bạch Lăng Lăng, nữ sinh khoa Điện khí, trẻ trung, xinh đẹp và rất tự hào khi quen được một người bạn lý tưởng qua mạng, chàng du học sinh của một trường nổi tiếng của Mỹ, người mang biệt danh “nhà khoa học”: Mãi Mãi Là Bao Xa. Qua những cuộc chuyện trò trên QQ, Lăng Lăng đã gắn bó với chàng trai đó lúc nào cô cũng không hay, cảm xúc lớn dần, sự chia sẻ lớn dần và đến một ngày cô phát hiện ra mình đã yêu người con trai “tài giỏi” và không một chút khuyết điểm ấy. Nhưng sự tỉnh táo giúp cô ý thức được rằng, thế giới mạng chỉ là ảo, họ ở cách nhau cả một đại dương mênh mông, anh lại quá xuất sắc và ưu tú, mối quan hệ của họ sẽ không có kết quả gì. Nhất là khi anh thông báo, nếu anh tiếp tục sự nghiệp nghiên cứu lần này, rất có thể anh phải định cư bên Mỹ, mãi mãi không trở về. Khi nghe tin đó, cô đã gục xuống trước màn hình máy tính và khóc. Tất cả như sụp đổ, tia hy vọng cuối cùng dập tắt, anh sẽ không về nước nữa, khoảng cách giữa họ là mãi mãi… Cô cay đắng nói với anh lời từ biệt và đưa nick của anh vào danh sách đen, không bao giờ xuất hiện khi cô đăng nhập QQ nữa…', 93000, '361ng1.jpg', 57, -1, 'publish', '2019-12-24'),
(104, 'NỤ HÔN CỦA SÓI (TÁI BẢN 2019)', 'Nụ Hôn Của Sói (Tái Bản 2019)\r\n\r\nNếu An Dĩ Phong không tính là đàn ông, trên thế giới này không ai dám nói chính mình là đàn ông!\r\n\r\nNếu An Dĩ Phong không tính là yêu nghiệt, như vậy, trên thế giới này cũng không hề có yêu nghiệt...\r\n\r\nHắn là một người đàn ông như vậy, rong ruổi giang hồ mười lăm năm, ai dám cùng hắn một câu trái ý, về sau đừng nghĩ mở miệng nói chuyện. Hắn kiêu ngạo ương ngạnh, hoành hành ngang dọc, hắn cô độc, mệt mỏi...nhưng mấy ai biết rằng, trong tim hắn chỉ có một bóng hình, và có một người lặng lẽ yêu hắn, chờ hắn... ở một nơi rất xa.\r\nHài hước, lãng mạn, miêu tả tâm lý nhân vật cực khéo, cốt truyện gay cấn, tác giả đã tạo cho câu chuyện tình yêu đầy màu sắc cổ tích giữa một nữ cảnh sát và anh chàng lừng lẫy chốn giang hồ sự hấp dẫn đặc biệt. Đan xen vào câu chuyện tình yêu này là câu chuyện của tình bạn, tình anh em, tình cha con, của nghĩa khí, chữ tín và sức mạnh của những ước mơ. Đó chính là những điều tốt đẹp trong cuộc đời này.', 79000, '78ng2.jpg', 57, -1, 'publish', '2019-12-24'),
(105, 'THỜI NIÊN THIẾU CỦA ANH VÀ EM', 'Thời Niên Thiếu Của Anh Và Em\r\n\r\nLà ai đã từng cầm nhành cây viết tên mình dưới nắng hè chói chang rực rỡ, nói với cậu thiếu niên đó tên mình có nghĩa là, trái tim này vẫn luôn ở đây;\r\n\r\nLà ai đã từng dùng ánh mắt trong veo quá đỗi dụ dỗ cô đọc thuộc tên mình, dùng đầu lưỡi trao viên kẹo chua chua ngọt ngọt từ miệng mình sang miệng cô;\r\n\r\nLà ai đã từng kéo cô chạy như bay trong khu xưởng bỏ hoang, ngắm nhìn phép thuật thắp lên hàng ngàn ánh đèn từ những ô cửa của những ngôi nhà xung quanh;\r\n\r\nLà ai đã từng lao lên bậc thang chạy dọc theo sân khấu ngoài trời dưới cơn mưa tầm tã, đôi bàn tay nắm chặt của đôi trẻ lơ lửng giữa không trung.\r\n\r\nVà, ai đã tỉnh lại từ trong hồi ức thanh xuân, phát hiện bản thân đang ngồi bên ô cửa sổ trên chuyến xe lửa đang chầm chậm lăn bánh rời ga;\r\n\r\nLà ai trong khoang tàu ồn ào huyên náo toàn mùi mì ăn liền, nhìn ra ngoài cửa sổ mải miết nhìn ngắm những cánh đồng hoang vắng lướt qua vùn vụt và vầng mặt trời đỏ rực như lòng đỏ trứng, nhớ đến Darwin, nhớ đến đề thi môn Sinh học, nhớ đến cá hề, hải quỳ và địa y', 96000, '54ng3.jpg', 57, -1, 'publish', '2019-12-24'),
(106, 'DUYÊN (BÌA MỀM) - TÁI BẢN 2018', 'Duyên (Bìa Mềm) - Tái Bản 2018\r\n\r\nYêu một người có lẽ chỉ trong chớp mắt, quên một người lại có thể cần cả cuộc đời.\r\n\r\nBiết rõ như thế, nhưng nhiều người vẫn phải yêu, thậm chí ngàn dặm xa xôi truy tìm tình yêu, muốn kết một đoạn tình duyên trong kiếp này, để tuổi xuân không hối, đời người không tiếc. Có điều tình yêu cần  trao ra, cần gánh vác, dù phụ bạc cũng phải nhẫn nhịn, dù phản bội cũng cần khoan dung. Dẫu có một ngày mất đi, dùng thời gian trọn đời để gìn giữ hoài tưởng, cũng sẽ không cảm thấy nặng nề mệt nhọc, tình yêu như vậy, mới được xem là tình yêu chân chính.', 82000, '322ng4.jpg', 57, -1, 'publish', '2019-12-24'),
(107, 'TỚ THÍCH CẬU HƠN CẢ HARVARD', 'Tuổi trẻ đầy mộng mơ và tươi đẹp của ai cũng đã từng có một chàng trai bàn bên, một cô nàng lớp kế, một người mà chúng ta dùng tất cả mọi sự thuần khiết và vô tư của mình để nhớ thương.\r\n\r\nNhững rung động ngọt ngào, những cảm xúc giản đơn, những khoảnh khắc tuổi trẻ đáng mến ấy, suy cho cùng ai cũng chỉ có một lần trong đời mà thôi.\r\n\r\nCó lẽ vì vậy mà Tớ Thich Cậu Hơn Cả Havard của nữ tác giả ngôn tình hàng đầu Việt Nam- Lan Rùa sẽ là cuốn sách thanh xuân tuyệt vời nhất cho tất cả chúng ta trong mùa hè năm nay !\r\n\r\nTỚ THÍCH CẬU HƠN CẢ HAVARD của Lan Rùa, là cuốn tiểu thuyết viết về những tháng năm hồn nhiên nhất trong cuộc đời mỗi người, từng trang sách sẽ cùng bạn đi tìm lại những dư vị ngọt ngào của mối tình thanh xuân năm nào qua mối tình “gà bông” của Thu và Khôi.\r\n\r\nCâu chuyện bắt đầu từ ước mơ Harvard mãnh liệt của một cô gái nhà nghèo có biệt danh “Tây Thu đậu phụ”, cho đến khi cô gặp Khôi-  một chàng trai có cuộc sống mà bao người mong ước. Hoàn cảnh khác biệt, tính cách đối lập, ngỡ tưởng họ sẽ chẳng bao giờ trở thành điều gì đó trong cuộc sống của nhau. Nhưng định mệnh vốn là thứ  không lường trước, chẳng biết từ bao giờ, một mối tình trong sáng chớm nở trong lòng những người trẻ ấy.', 68000, '650ng5.jpg', 57, -1, 'publish', '2019-12-24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sliders`
--

CREATE TABLE `sliders` (
  `id` int(11) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `create_at` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `sliders`
--

INSERT INTO `sliders` (`id`, `link`, `image`, `status`, `create_at`) VALUES
(48, '/BTL/detail.php?product_id=89', '576ma2.jpg', 'publish', '2019-12-13'),
(50, '/BTL/detail.php?product_id=76', '352tau4.jpg', 'publish', '2019-12-13'),
(57, '/BTL/detail.php?product_id=100', '787535tr3.jpg', 'publish', '2020-06-04'),
(55, '/BTL/detail.php?product_id=101', '502163tr4.jpg', 'publish', '2020-06-04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `passwords` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `create_at` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `passwords`, `role`, `status`, `create_at`) VALUES
(52, 'Quốc Đạt', 'admin@gmail.com', '123456', 'admin', 'publish', '2020-06-07'),
(51, 'Lưu Quốc Đạt', 'quocdat@gmail.com', '123456', 'admin', 'publish', '2020-06-07');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `kinds`
--
ALTER TABLE `kinds`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_products1_categories` (`categori_id`);

--
-- Chỉ mục cho bảng `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT cho bảng `kinds`
--
ALTER TABLE `kinds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT cho bảng `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
