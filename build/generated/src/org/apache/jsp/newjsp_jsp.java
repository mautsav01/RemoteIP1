package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.security.cert.X509Certificate;
import java.security.Principal;

public final class newjsp_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\n');
      out.write('\n');

    try{
X509Certificate[] certs = (X509Certificate[])
request.getAttribute("javax.servlet.request.X509Certificate");
// Check that a certificate was obtained
if (certs.length < 1) {
  System.err.println("SSL not client authenticated");
 
}
out.print("1sdfksdjfhsdfkjsdfhsdkjf");
// The base of the certificate chain contains the client's info
X509Certificate principalCert = certs[0];

// Get the Distinguished Name from the certificate
// Ex/ "E=joeuser@endeca.com, CN=joeuser, O=Endeca,
//     "L=Cambridge, S=MA, C=US"
Principal principal = principalCert.getSubjectDN();
out.print("2nddslkfsdjflskfsdjflksdfjsdlfkds");
// Extract the common name (CN)
int start = principal.getName().indexOf("CN");
String tmpName, name = "";
if (start > 0) { 
  tmpName = principal.getName().substring(start+3);
  int end = tmpName.indexOf(",");
  if (end > 0) {
    name = tmpName.substring(0, end);
  }
  else {
    name = tmpName; 
  }
}
// Now query the LDAP server for authentication
    }catch(Exception e){
        
      out.write("\n");
      out.write("        <h1>");
      out.print(e);
      out.write('\n');

        out.print(e);
        
    }

    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
