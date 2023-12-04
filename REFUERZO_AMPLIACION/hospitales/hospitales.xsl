<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
   <xsl:template match="/">
      <html>
         <body>
            <h1>Ejercicio XSLT</h1>
            <h2>Todos los hospitales</h2>
            <table border="1">
               <tr bgcolor="#9acd32">
                  <th style="text-align:left">Nombre Hospital</th>
                  <th style="text-align:left">Código</th>
                  <th style="text-align:left">Localidad</th>
                  <th style="text-align:left">Número de camas</th>
               </tr>
               <tr>
                  <td>Hospital 12 de Octubre</td>
                  <td>CM-H-121</td>
                  <td>Madrid</td>
                  <td>19800</td>
               </tr>
               <tr>
                  <td>Hospital Gregorio Marañón</td>
                  <td>CM-H-547</td>
                  <td>Madrid</td>
                  <td>2228</td>
               </tr>
               <tr>
                  <td>Hospital de Alcorcón</td>
                  <td>CM-H-472</td>
                  <td>Alcorcón</td>
                  <td>458</td>
               </tr>
               <tr>
                  <td>Hospital Puerta de Hierro</td>
                  <td>CM-H-578</td>
                  <td>Majadahonda</td>
                  <td>19800</td>
               </tr>
               <tr>
                  <td colspan="4">Número total de hospitales: 4</td>
               </tr>
            </table>
         </body>
      </html>
   </xsl:template>
</xsl:stylesheet>