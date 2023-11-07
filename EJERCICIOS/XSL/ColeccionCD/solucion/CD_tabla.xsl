<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
   <xsl:template match="/">
      <html>
         <head>
            <title>Mi tabla de CDs</title>
         </head>
         <body>
            <h2><xsl:value-of select="catalog/@titulo"/></h2>

            <!-- tabla de cds-->
            <table border="1">
               <tr bgcolor="#9acd32">
                  <th style="text-align:left">Título</th>
                  <th style="text-align:left">Artista</th>
                  <th style="text-align:left">Precio</th>
               </tr>

               <!-- Generar dinámicamente tantas filas como cds-->
               <xsl:for-each select="//cd">
                  <!-- ordenado por precio descendente-->
                  <xsl:sort select="price" order="descending" data-type="number"/>

                  <tr>
                     <td><xsl:value-of select="title"/></td>
                     <td><xsl:value-of select="artist"/></td>

                     <!-- el color de esta celda depende del precio -->
                     <xsl:choose>
                        <xsl:when test="price &lt;= 8.5">
                           <td bgcolor="green"><xsl:value-of select="price"/></td>
                        </xsl:when>
                        <xsl:when test="price > 9">
                           <td bgcolor="red"><xsl:value-of select="price"/></td>
                        </xsl:when>
                        <!--<xsl:when test="price &gt;= 8.5 and price &lt;=9">
                           <td bgcolor="red"><xsl:value-of select="price"/></td>
                        </xsl:when>-->
                        <xsl:otherwise>
                           <td bgcolor="blue"><xsl:value-of select="price"/></td>
                        </xsl:otherwise>
                     </xsl:choose>

                     
                  </tr>
               </xsl:for-each>

               <tr>
                  <td colspan="3">Precio total: <xsl:value-of select="round(sum(//price))"/> </td>
               </tr>
               <tr>
                  <td colspan="3">Precio menor: <xsl:value-of select="min(//price)"/> </td>
               </tr>
               <tr>
                  <td colspan="3">Precio mayor: <xsl:value-of select="max(//price)"/> </td>
               </tr>


            </table>
         </body>
      </html>
   </xsl:template>
</xsl:stylesheet>
