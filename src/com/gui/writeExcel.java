package com.gui;

import java.io.*;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jxl.Workbook;
import jxl.write.Label;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;
import jxl.write.WriteException;

import javax.mail.*;
import javax.mail.internet.*;
import javax.activation.*;

import sun.misc.BASE64Encoder;

public class writeExcel extends HttpServlet {

	/**
	 * The doGet method of the servlet. <br>
	 * 
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		/****************
		 * Get the system time and add 7 hours more because the time is Chinese
		 * time
		 *********************/
		long currentTime = System.currentTimeMillis();
		currentTime -= 7 * 60 * 60 * 1000;
		Date d = new Date(currentTime);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd_kkmmss");
		String random = sdf.format(d);
		/***************** Get the basic path of the system *******************/
		String path = System.getProperty("user.dir");

		/***************** Get all the request parameters of Sender ************************/
		int iPackageAmount = 0;
		String sPackageAmount = null;
		if ((sPackageAmount = request.getParameter("packageAmount")) == null) {
			System.out.print("\n Couldn't get the package number \n");
			response.sendRedirect("Form.jsp?success=no");
		} else {
			iPackageAmount = Integer.parseInt(sPackageAmount);
		}

		String senderName = null;
		if ((senderName = request.getParameter("sender")) == null) {
			System.out.print("\n Couldn't get the sender name \n");
			response.sendRedirect("Form.jsp?success=no");
		}

		String senderAddress = null;
		if ((senderAddress = request.getParameter("senderAddress")) == null) {
			System.out.print("\n Couldn't get the senderAddress \n");
			response.sendRedirect("Form.jsp?success=no");
		}

		String senderPhoneNumber = null;
		if ((senderPhoneNumber = request.getParameter("senderPhoneNumber")) == null) {
			System.out.print("\n Couldn't get the sender Phone Number \n");
			response.sendRedirect("Form.jsp?success=no");
		}

		String senderEmail = null;
		if ((senderEmail = request.getParameter("senderEmail")) == null) {
			System.out.print("\n Couldn't get the sender Email \n");
			response.sendRedirect("Form.jsp?success=no");
		}

		String CollectionDate = null;
		if ((CollectionDate = request.getParameter("CollectionDate")) == null) {
			System.out.print("\n Couldn't get the CollectionDate \n");
			response.sendRedirect("Form.jsp?success=no");
		}

		String formPrint = null;
		if ((formPrint = request.getParameter("formPrint")) == null) {
			System.out.print("\n Couldn't get the formPrint flag \n");
			response.sendRedirect("Form.jsp?success=no");
		}

		String filename = "Order from " + senderName + "--" + random + ".xls";
		String targetFile = path + "/" + filename;
		System.out.print("\n Filename is:" + filename + "\n");
		System.out.print("\n Sender name is:" + senderName + "\n");

		try {
			FileOutputStream customerForm = new FileOutputStream(targetFile);
			WritableWorkbook wwb = Workbook.createWorkbook(customerForm);
			// 新建一张表
			WritableSheet wsheet = wwb.createSheet("Sheet1", 0);
			// 设置表头

			Label label = new Label(0, 0, "");
			wsheet.addCell(label);
			label = new Label(0, 0, "Senderref");
			wsheet.addCell(label);
			label = new Label(1, 0, "Clientref");
			wsheet.addCell(label);
			label = new Label(2, 0, "Contractname");
			wsheet.addCell(label);
			label = new Label(3, 0, "labelref");
			wsheet.addCell(label);
			label = new Label(4, 0, "productcode");
			wsheet.addCell(label);
			label = new Label(5, 0, "shipweight");
			wsheet.addCell(label);
			label = new Label(6, 0, "colli");
			wsheet.addCell(label);
			label = new Label(7, 0, "Companyname");
			wsheet.addCell(label);
			label = new Label(8, 0, "lastname");
			wsheet.addCell(label);
			label = new Label(9, 0, "department");
			wsheet.addCell(label);
			label = new Label(10, 0, "email");
			wsheet.addCell(label);
			label = new Label(11, 0, "street");
			wsheet.addCell(label);
			label = new Label(12, 0, "housenr");
			wsheet.addCell(label);
			label = new Label(13, 0, "housenradd");
			wsheet.addCell(label);
			label = new Label(14, 0, "zip");
			wsheet.addCell(label);
			label = new Label(15, 0, "city");
			wsheet.addCell(label);
			label = new Label(16, 0, "country");
			wsheet.addCell(label);
			label = new Label(17, 0, "date");
			wsheet.addCell(label);
			label = new Label(18, 0, "valuta");
			wsheet.addCell(label);
			label = new Label(19, 0, "gptype");
			wsheet.addCell(label);
			label = new Label(20, 0, "gpinvoicenr");
			wsheet.addCell(label);
			label = new Label(21, 0, "gpcertificate");
			wsheet.addCell(label);
			label = new Label(22, 0, "gplicensenr");
			wsheet.addCell(label);
			label = new Label(23, 0, "gphandlenond");
			wsheet.addCell(label);
			label = new Label(24, 0, "barcode");
			wsheet.addCell(label);
			label = new Label(25, 0, "gpomschr1");
			wsheet.addCell(label);
			label = new Label(26, 0, "gpaantal1");
			wsheet.addCell(label);
			label = new Label(27, 0, "gpweight1");
			wsheet.addCell(label);
			label = new Label(28, 0, "gpvalue1");
			wsheet.addCell(label);
			label = new Label(29, 0, "HStariff1");
			wsheet.addCell(label);
			label = new Label(30, 0, "gporgcountry1");
			wsheet.addCell(label);
			// /////////////////////////////////////////////////////////

			System.out.print("\n package amount is:" + iPackageAmount + "\n");
			SimpleDateFormat orderDateFormater = new SimpleDateFormat(
					"yy/MM/dd");
			String orderDateFormated = orderDateFormater.format(d);

			for (int i = 0; i < iPackageAmount; i++) {

				int packageNumber = i + 1;

				String[] attribute = null;
				if ((attribute = request.getParameterValues("packageAttribute"
						+ packageNumber)) == null) {
					System.out.print("\n Couldn't get package " + packageNumber
							+ "attributes\n");
					if (deleteFile(targetFile)) {	
						System.out.print("\n target file do exist when couldn't get package " + packageNumber
							+ "attributes\n");
					}
					response.sendRedirect("Form.jsp?success=no");
				}
				String wholeAttribute = "";
				for (int a = 0; a < attribute.length; a++) {
					wholeAttribute = wholeAttribute + attribute[a] + ";";
				}
				// System.out.print("\n the attributes are :"+wholeAttribute+"\n");
				label = new Label(0, packageNumber, "");
				wsheet.addCell(label);
				label = new Label(1, packageNumber, "");
				wsheet.addCell(label);
				label = new Label(2, packageNumber, "");
				wsheet.addCell(label);
				label = new Label(3, packageNumber, "");
				wsheet.addCell(label);
				label = new Label(4, packageNumber, "");
				wsheet.addCell(label);

				String packageWeight = null;
				if ((packageWeight = request.getParameter("packageWeight"
						+ packageNumber)) == null) {
					System.out.print("\n Couldn't get the package "
							+ packageNumber + "weight\n");
					if (deleteFile(targetFile)) {	
						System.out.print("\n target file do exist when couldn't get the package "
							+ packageNumber + "weight\n");
					}
					response.sendRedirect("Form.jsp?success=no");
				}
				label = new Label(5, packageNumber, packageWeight); // packageWeight
				wsheet.addCell(label);
				label = new Label(6, packageNumber, "");
				wsheet.addCell(label);
				label = new Label(7, packageNumber, "");
				wsheet.addCell(label);

				String receiver = null;
				if ((receiver = request
						.getParameter("receiver" + packageNumber)) == null) {
					System.out.print("\n Couldn't get receiver "
							+ packageNumber + "\n");
					if (deleteFile(targetFile)) {	
						System.out.print("\n target file do exist when couldn't get receiver "
							+ packageNumber + "\n");
					}
					response.sendRedirect("Form.jsp?success=no");
				}
				label = new Label(8, packageNumber, receiver); // ReceiverName
				wsheet.addCell(label);

				String receiverPhone = null;
				if ((receiverPhone = request.getParameter("receiverPhone"
						+ packageNumber)) == null) {
					System.out.print("\n Couldn't get receiverPhone "
							+ packageNumber + "\n");
					if (deleteFile(targetFile)) {	
						System.out.print("\n target file do exist when couldn't get receiverPhone "
							+ packageNumber + "\n");
					}
					response.sendRedirect("Form.jsp?success=no");
				}
				label = new Label(9, packageNumber, receiverPhone); // ReceiverPhone
				wsheet.addCell(label);
				label = new Label(10, packageNumber, "");
				wsheet.addCell(label);

				String receiverAddress = null;
				if ((receiverAddress = request.getParameter("receiverAddress"
						+ packageNumber)) == null) {
					System.out.print("\n Couldn't get receiver Address "
							+ packageNumber + "\n");
					if (deleteFile(targetFile)) {	
						System.out.print("\n target file do exist when couldn't get receiver Address "
							+ packageNumber + "\n");
					}
					response.sendRedirect("Form.jsp?success=no");
				}
				label = new Label(11, packageNumber, receiverAddress); // receiveAddress
				wsheet.addCell(label);
				label = new Label(12, packageNumber, "");
				wsheet.addCell(label);
				label = new Label(13, packageNumber, "");
				wsheet.addCell(label);

				String receiverPostcode = null;
				if ((receiverPostcode = request.getParameter("receiverPostcode"
						+ packageNumber)) == null) {
					System.out.print("\n Couldn't get receiver Postcode "
							+ packageNumber + "\n");
					if (deleteFile(targetFile)) {	
						System.out.print("\n target file do exist when couldn't get receiver Postcode "
							+ packageNumber + "\n");
					}
					response.sendRedirect("Form.jsp?success=no");
				}
				label = new Label(14, packageNumber, receiverPostcode); // receiverPostcode
				wsheet.addCell(label);

				String receiverCity = null;
				if ((receiverCity = request.getParameter("receiverCity"
						+ packageNumber)) == null) {
					System.out.print("\n Couldn't get receiver City "
							+ packageNumber + "\n");
					if (deleteFile(targetFile)) {	
						System.out.print("\n target file do exist when couldn't get receiver City "
							+ packageNumber + "\n");
					}
					response.sendRedirect("Form.jsp?success=no");
				}
				label = new Label(15, packageNumber, receiverCity); // receiverCity
				wsheet.addCell(label);
				label = new Label(16, packageNumber, "CN");
				wsheet.addCell(label);
				label = new Label(17, packageNumber, orderDateFormated); // orderDate
				wsheet.addCell(label);
				label = new Label(18, packageNumber, "");
				wsheet.addCell(label);
				label = new Label(19, packageNumber, "0");
				wsheet.addCell(label);
				label = new Label(20, packageNumber, "Ref001");
				wsheet.addCell(label);
				label = new Label(21, packageNumber, "1");
				wsheet.addCell(label);
				label = new Label(22, packageNumber, "1");
				wsheet.addCell(label);
				label = new Label(23, packageNumber, "1");
				wsheet.addCell(label);
				label = new Label(24, packageNumber, "");
				wsheet.addCell(label);
				label = new Label(25, packageNumber, wholeAttribute); // packageAttribute
				wsheet.addCell(label);
				label = new Label(26, packageNumber, "1");
				wsheet.addCell(label);
				label = new Label(27, packageNumber, packageWeight); // packageWeight
				wsheet.addCell(label);

				String packageValue = null;
				if ((packageValue = request.getParameter("packageValue"
						+ packageNumber)) == null) {
					System.out.print("\n Couldn't get package Value "
							+ packageNumber + "\n");
					if (deleteFile(targetFile)) {	
						System.out.print("\n target file do exist when couldn't get package Value "
							+ packageNumber + "\n");
					}
					response.sendRedirect("Form.jsp?success=no");
				}
				label = new Label(28, packageNumber, packageValue); // packageValue
				wsheet.addCell(label);
				label = new Label(29, packageNumber, "1901");
				wsheet.addCell(label);
				label = new Label(30, packageNumber, "nl");
				wsheet.addCell(label);
			}

			wwb.write();
			wwb.close();
			customerForm.close();
			// ///////////////////////////////send mail///////////////////////
			String userName = "aectrading@sina.com";
			String password = "aectrading";
			String smtp_server = "smtp.sina.com";
			String from_mail_address = userName;
			String[] to_mail_address = { "thomas653008262@163.com",
					"thomas65300826@163.com" };
			// String to_mail_address="thomas653008262@163.com";
			// String BCC_to_mail_address="aectrading@sina.com";

			InternetAddress[] internetAddressTo = new InternetAddress[to_mail_address.length];
			for (int nAdd = 0; nAdd < to_mail_address.length; nAdd++) {
				internetAddressTo[nAdd] = new InternetAddress(
						to_mail_address[nAdd]);
			}

			// InternetAddress internetAddressTo = new
			// InternetAddress(to_mail_address);

			Authenticator auth = new PopupAuthenticator(userName, password);
			Properties mailProps = new Properties();
			mailProps.put("mail.smtp.host", smtp_server);
			mailProps.put("mail.smtp.auth", "true");
			mailProps.put("username", userName);
			mailProps.put("password", password);

			// Session mailSession=Session.getDefaultInstance(mailProps, auth);
			Session mailSession = Session.getInstance(mailProps, auth);
			mailSession.setDebug(true);
			MimeMessage message = new MimeMessage(mailSession);
			message.setFrom(new InternetAddress(from_mail_address));
			message.setRecipients(Message.RecipientType.BCC, internetAddressTo);

			// message.setRecipient(Message.RecipientType.BCC,
			// internetAddressTo);
			message.setSubject(MimeUtility.encodeText("Order from "
					+ senderName, "UTF-8", "B"));

			// 创建消息部分
			BodyPart messageBodyPart = new MimeBodyPart();

			// 填写消息
			messageBodyPart.setContent("寄件人:" + senderName + "\n" + "提货地址："
					+ senderAddress + "\n" + "电话：" + senderPhoneNumber + "\n"
					+ "邮箱：" + senderEmail + "\n" + "提货日期：" + CollectionDate
					+ "\n" + "是否打印单：" + formPrint + "\n",
					"text/plain;charset=UTF-8");
			// 创建一个多部分消息
			Multipart multipart = new MimeMultipart();

			// 设置文本消息部分
			multipart.addBodyPart(messageBodyPart);

			// 第二部分是附件
			messageBodyPart = new MimeBodyPart();

			DataSource source = new FileDataSource(targetFile);
			messageBodyPart.setDataHandler(new DataHandler(source));
			messageBodyPart.setFileName(MimeUtility.encodeText(filename,
					"UTF-8", "B"));
			multipart.addBodyPart(messageBodyPart);

			message.setContent(multipart);
			message.saveChanges();
			Transport.send(message);
			if (new File(targetFile).exists()) {
				deleteFile(targetFile);
				System.out.print("\n target file do exist!!\n");
			}
			response.sendRedirect("Form.jsp?success=yes");

		} catch (Exception ex) {
			System.err.println("邮件发送失败的原因是：" + ex.getMessage());
			System.err.println("具体的错误原因");
			ex.printStackTrace(System.err);
			ex.printStackTrace();
			if (deleteFile(targetFile)) {	
				System.out.print("\n target file do exist when error catched!!\n");
			}
			response.sendRedirect("Form.jsp?success=no");
		} finally {
			response.flushBuffer();
		}

	}

	/**
	 * The doPost method of the servlet. <br>
	 * 
	 * This method is called when a form has its tag value method equals to
	 * post.
	 * 
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
	}
	

	/**
	 * 删除单个文件
	 * 
	 * @param sPath
	 *            被删除文件的文件名
	 * @return 单个文件删除成功返回true，否则返回false
	 */
	public boolean deleteFile(String sPath) {
		boolean flag = false;
		File file = new File(sPath);
		// 路径为文件且不为空则进行删除
		if (file.isFile() && file.exists()) {
			file.delete();
			flag = true;
		}
		return flag;
	}

}

class PopupAuthenticator extends Authenticator {
	private String username;
	private String password;

	public PopupAuthenticator(String username, String pwd) {
		this.username = username;
		this.password = pwd;
	}

	public PasswordAuthentication getPasswordAuthentication() {
		return new PasswordAuthentication(this.username, this.password);
	}
}