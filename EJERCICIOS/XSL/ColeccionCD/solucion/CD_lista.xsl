<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
   <xsl:template match="/">
      <html>
         <body>
            <!-- el título se genera dinámicamente según el contenido del atributo titlo-->
            <h2>xsl:value-of select="catalog/@titulo"/></h2>

            <table border="1">

               <tr bgcolor="#9acd32">
                  <th style="text-align:left">Títulos</th>
                  <th style="text-align:left">Artistas</th>
               </tr>

               <!--solo hay un tr. No hay que generar filas de la tabla dinámicamente-->
               <tr>
                  <!-- la fila tiene dos columnas-->
                  <!-- primera columna: para una lista de títulos-->
                  <td>
                     <ul>
                        <!-- se van a crear tantos li como cds haya. Uno por título-->
                        <!--<xsl:for-each select="//title">
                           <li><xsl:value-of select="."/></li>
                        </xsl:for-each>-->
                        <xsl:for-each select="//cd">
                           <li><xsl:value-of select="title"/></li>
                        </xsl:for-each>
                     </ul>
                  </td>
                  <!-- segunda columna: para una lista de autores-->
                  <td>
                     <ol>
                        <xsl:for-each select="//cd">
                           <li><xsl:value-of select="artist"/></li>
                        </xsl:for-each>
                     </ol>
                  </td>
               </tr>
            </table>
         </body>
      </html>
   </xsl:template>
</xsl:stylesheet>