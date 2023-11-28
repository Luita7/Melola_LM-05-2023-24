<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
   <xsl:template match="/">
      <html>
         <body>
            <h1>Recetas de Cocina - 1º DAW A</h1>
            <h2>Se mostrarán las recetas que contienen la categoría de los callos a la madrileña</h2>

            <xsl:variable name="codRec" select="//receta[nombre='Callos a la madrileña']/@idCats"/>

            <h3><u>RECETAS CON CATEGORÍA:</u><xsl:value-of select="//categoria[@idCat=$codRec]"/></h3>

            <table border="1" style="border:3px solid blue;">

               <tr style="background-color:lightblue;">
                  <th style="text-align:center">Foto</th>
                  <th style="text-align:center">Nombre</th>
                  <th style="text-align:center">Calorias</th>
                  <th style="text-align:center">Pasos</th>
               </tr>

               <xsl:for-each select="//receta[contains(@idCats,$codRec)]">
               <!--<xsl:for-each select="//receta">-->
                  <xsl:sort select="calorias" order="descending" data-type="number"/>
                  <tr>
                     <td><img src="imgs/{@foto}"/></td>
                     <td><xsl:value-of select="nombre"/></td>

                     <xsl:choose>
                        <xsl:when test="calorias > 800">
                           <td style="background-color:lightpink"><xsl:value-of select="calorias"/></td>
                        </xsl:when>
                        <xsl:when test="calorias > 500 and calorias &lt;= 800">
                           <td style="background-color:orange"><xsl:value-of select="calorias"/></td>
                        </xsl:when>
                        <xsl:otherwise>
                           <td style="background-color:lightgreen"><xsl:value-of select="calorias"/></td>
                        </xsl:otherwise>
                     </xsl:choose>

                     <td>
                        <ol>
                           <xsl:for-each select="pasos/paso">
                              <li><xsl:value-of select="."/></li>
                           </xsl:for-each>
                        </ol>
                     </td>
                  </tr>
               </xsl:for-each>
               <tr>
                  <td colspan="5"><b>Número de recetas totales del recetario:</b><xsl:value-of select="count(//receta)"/></td>
               </tr>
            </table>
         </body>
      </html>
   </xsl:template>
</xsl:stylesheet>