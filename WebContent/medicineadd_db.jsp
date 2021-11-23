<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="java.io.File"%>
<%@page import="com.dao.MedicineDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <title>Add Medicine Image</title>
    </head>
    <body>
    <%
        String filePath;
 		int maxFileSize = 5000 * 1024;
 		int maxMemSize = 4 * 1024;
 		File file; 
 		String fileName = "";
		String med_image="";
 		filePath = application.getInitParameter("UPLOAD");

 		System.out.println("FilePath = "+filePath);

 		DiskFileItemFactory factory = new DiskFileItemFactory();

   		// maximum size that will be stored in memory
   		factory.setSizeThreshold(maxMemSize);
   
   		// Location to save data that is larger than maxMemSize.
   		factory.setRepository(new File("C:\\Users\\DELL\\workspace\\MedFourHeal_Project\\WebContent\\images\\medicine\\temp"));
   		

   		// Create a new file upload handler
   		ServletFileUpload upload = new ServletFileUpload(factory);
   
   		// maximum file size to be uploaded.
   		upload.setSizeMax(maxFileSize);

   		try
   		{
    			// Parse the request to get file items.
    			List fileItems = upload.parseRequest(request);

    			// Process the uploaded file items
    			Iterator i = fileItems.iterator();
    
    			while(i.hasNext())
    			{
     			FileItem fi = (FileItem) i.next();
    
     			if (!fi.isFormField()) 
     			{
      				// Get the uploaded file parameters
      				String fieldName = fi.getFieldName();
      				long fileSize= fi.getSize();
      
      				fileName = fi.getName();
      				med_image=fileName;
      				System.out.println("FileName = "+med_image+" FileSize = "+fileSize);
     
         			// Write the file
        				if (fileName.lastIndexOf("\\") >= 0)
         			{
          				file = new File(filePath
                  							+ fileName.substring(fileName.lastIndexOf("\\")));
        				} else {
          				file = new File(filePath
                  							+ fileName.substring(fileName.lastIndexOf("\\") + 1));
         			}
      				fi.write(file);
     			}
     			else
     			{
     				String fieldName = fi.getFieldName();
       				String fieldData = fi.getString();
     			}
    			}
    
    			System.out.println("File uploaded successfully at the path "+filePath+fileName);
   		}
   		catch(Exception ex)
   		{
    			ex.printStackTrace();
   		}
   		
   		String email=(String)session.getAttribute("distributor");
   		String medcode=(String)session.getAttribute("Medcode");
   		MedicineDAO obj=new MedicineDAO();
   		boolean i=obj.addMedicineImageName(email, medcode, med_image);
   		if(i){
   	     %>
   	        <script>
   	            swal("Welcome!", "Medicine Image Added Successfully!", "Success");
   	        </script>
   	        
   	        <jsp:include page="distributroProcess.jsp"/>
   	        <%
   	            } else {
   	                %>
   	        <script>
   	            swal("Medicine Image Not Added !", "Error");
   	        </script>
   	        <jsp:include page="medicineimage.jsp"/>
   	        <%
   	       }
   	 %>
    </body>
</html>
