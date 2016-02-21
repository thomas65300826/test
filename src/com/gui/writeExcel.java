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
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        long currentTime = System.currentTimeMillis();
        currentTime -=7*60*60*1000;
        Date d = new Date(currentTime); 
        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd_kkmmss"); 
        String random = sdf.format(d); 
        String path = System.getProperty("user.dir");
        String filename = "Order from "+request.getParameter("sender")+"--"+ random + ".xls";
        String targetFile = path+"/"+filename;
        System.out.print("\n 文件filename:"+filename+"\n");
        System.out.print("\n 信息some information:sender:"+request.getParameter("sender")+"\n receiver1"+request.getParameter("receiver1")+"\n");
        
		 try { 

	            //response.setContentType("application/vnd.ms-excel"); 
	            //response.addHeader("Content-Disposition", "attachment;   filename=\"" + filename + "\""); 
	            
	            FileOutputStream customerForm = new FileOutputStream(path+"/"+filename);
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
	   ///////////////////////////////////////////////////////////
				 int packgeAmount = Integer.parseInt(request.getParameter("packageAmount"));
				 //System.out.print("/n package amount is:"+packgeAmount);
			     SimpleDateFormat orderDateFormater = new SimpleDateFormat("yy/MM/dd"); 
			     String orderDateFormated = orderDateFormater.format(d); 
	             for(int i = 0; i<packgeAmount;i++){

	            	int packageNumber = i+1;
	            	
	 				String[] attribute = request.getParameterValues("packageAttribute"+packageNumber);
	 				String wholeAttribute ="";
	 				for (int a = 0; a < attribute.length; a++) {
	 						wholeAttribute=wholeAttribute+attribute[a]+";";
	 				}
	 	            //System.out.print("\n the attributes are :"+wholeAttribute+"\n");
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
	 	            label = new Label(5, packageNumber, request.getParameter("packageWeight"+packageNumber)); //packageWeight
	 	            wsheet.addCell(label); 
	 	            label = new Label(6, packageNumber, ""); 
	 	            wsheet.addCell(label); 
	 	            label = new Label(7, packageNumber, ""); 
	 	            wsheet.addCell(label); 
	 	            label = new Label(8, packageNumber, request.getParameter("receiver"+packageNumber)); //ReceiverName
	 	            wsheet.addCell(label); 
	 	            label = new Label(9, packageNumber, request.getParameter("receiverPhone"+packageNumber)); //ReceiverPhone
	 	            wsheet.addCell(label); 
	 	            label = new Label(10, packageNumber, ""); 
	 	            wsheet.addCell(label); 
	 	            label = new Label(11, packageNumber, request.getParameter("receiverAddress"+packageNumber)); //receiveAddress
	 	            wsheet.addCell(label);
	 	            label = new Label(12, packageNumber, ""); 
	 	            wsheet.addCell(label);
	 	            label = new Label(13, packageNumber, ""); 
	 	            wsheet.addCell(label);
	 	            label = new Label(14, packageNumber, request.getParameter("receiverPostcode"+packageNumber)); //receiverPostcode
	 	            wsheet.addCell(label);
	 	            label = new Label(15, packageNumber, request.getParameter("receiverCity"+packageNumber)); //receiverCity
	 	            wsheet.addCell(label);
	 	            label = new Label(16, packageNumber, "CN"); 
	 	            wsheet.addCell(label);
	 	            label = new Label(17, packageNumber, orderDateFormated); //orderDate
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
	 	            label = new Label(25, packageNumber,wholeAttribute); //packageAttribute
	 	            wsheet.addCell(label);
	 	            label = new Label(26, packageNumber, "1"); 
	 	            wsheet.addCell(label);
	 	            label = new Label(27, packageNumber, request.getParameter("packageWeight"+packageNumber)); //packageWeight
	 	            wsheet.addCell(label);
	 	            label = new Label(28, packageNumber, request.getParameter("packageValue"+packageNumber)); //packageValue
	 	            wsheet.addCell(label);
	 	            label = new Label(29, packageNumber, "1901"); 
	 	            wsheet.addCell(label);
	 	            label = new Label(30, packageNumber, "nl"); 
	 	            wsheet.addCell(label);
	             }
	      
	            wwb.write(); 
	            wwb.close(); 
	            customerForm.close(); 
/////////////////////////////////send mail///////////////////////
         String userName="aectrading@sina.com";
         String password="aectrading";
         String smtp_server="smtp.sina.com";
         String from_mail_address=userName;
         String[] to_mail_address={"thomas653008262@163.com", "asiaeuroconnect@gmail.com"};
         //String to_mail_address="thomas653008262@163.com";
         //String BCC_to_mail_address="aectrading@sina.com";
         
         InternetAddress[] internetAddressTo = new InternetAddress[to_mail_address.length];
         for (int nAdd = 0; nAdd < to_mail_address.length; nAdd++){ 
        	 internetAddressTo[nAdd] = new InternetAddress(to_mail_address[nAdd]); 
         } 
         
         //InternetAddress internetAddressTo = new InternetAddress(to_mail_address);
         
         Authenticator auth=new PopupAuthenticator(userName,password);
         Properties mailProps=new Properties();
         mailProps.put("mail.smtp.host", smtp_server);
         mailProps.put("mail.smtp.auth", "true");
         mailProps.put("username", userName);
         mailProps.put("password", password);

         //Session mailSession=Session.getDefaultInstance(mailProps, auth);
         Session mailSession=Session.getInstance(mailProps, auth); 
         mailSession.setDebug(true);
         MimeMessage message=new MimeMessage(mailSession);
         message.setFrom(new InternetAddress(from_mail_address));
         message.setRecipients(Message.RecipientType.BCC, internetAddressTo);
        
         //message.setRecipient(Message.RecipientType.BCC, internetAddressTo);
         message.setSubject(MimeUtility.encodeText("Order from "+request.getParameter("sender"), "UTF-8", "B"));
                
         // 创建消息部分 
         BodyPart messageBodyPart = new MimeBodyPart();
 
         // 填写消息
         messageBodyPart.setContent("寄件人:"+request.getParameter("sender")+"\n" +
         		"提货地址："+request.getParameter("senderAddress")+"\n"+
        		 "电话："+request.getParameter("senderPhoneNumber")+"\n"+
         		"邮箱："+request.getParameter("senderEmail")+"\n"+
        		 "提货日期："+request.getParameter("CollectionDate")+"\n"+
         		"是否打印单："+request.getParameter("formPrint")+"\n", "text/plain;charset=UTF-8");
         // 创建一个多部分消息
         Multipart multipart = new MimeMultipart();
 
         // 设置文本消息部分
         multipart.addBodyPart(messageBodyPart);

         
         
         // 第二部分是附件
         messageBodyPart = new MimeBodyPart();

         DataSource source = new FileDataSource(targetFile);
         messageBodyPart.setDataHandler(new DataHandler(source));
         messageBodyPart.setFileName(MimeUtility.encodeText(filename, "UTF-8", "B"));
         multipart.addBodyPart(messageBodyPart);


         message.setContent(multipart);
         message.saveChanges();
         Transport.send(message);
         if(new File(targetFile).exists()){
        	 deleteFile(targetFile);
        	 System.out.print("\n target file do exist!!\n");
         }
         response.sendRedirect("Form.jsp?success=yes");      
         
         }
	 catch(Exception ex){
         System.err.println("邮件发送失败的原因是："+ex.getMessage());
         System.err.println("具体的错误原因");
         ex.printStackTrace(System.err);
         ex.printStackTrace();
         if(new File(targetFile).exists()){
        	 deleteFile(targetFile);
        	 System.out.print("\n target file do exist when error catched!!\n");
         }
         response.sendRedirect("Form.jsp?success=no");
         }finally{ response.flushBuffer(); }
		 
         
          
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			this.doGet(request, response);
	}
	
	/** 
	 * 删除单个文件 
	 * @param   sPath    被删除文件的文件名 
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


class PopupAuthenticator extends Authenticator{
private String username;
private String password;
public PopupAuthenticator(String username,String pwd){
this.username=username;
this.password=pwd;
}
public PasswordAuthentication getPasswordAuthentication(){
return new PasswordAuthentication(this.username,this.password);
}
}