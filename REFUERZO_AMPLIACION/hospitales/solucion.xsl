<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
   <xsl:template match="/">
      <html>
         <body>
            <h1>Ejercicio XSLT - Hospitales</h1>

            <h2>TABLA 1: Todos los hospitales</h2>
            <table border="1">
               <tr bgcolor="#9acd32">
                  <th style="text-align:left">Nombre Hospital</th>
                  <th style="text-align:left">Código</th>
                  <th style="text-align:left">Localidad</th>
                  <th style="text-align:left">Número de camas</th>
               </tr>
               <xsl:for-each select="hospitales/hospital">
                  <tr>
                     <td>
                        <xsl:value-of select="nombre" />
                     </td>
                     <td>
                        <xsl:value-of select="@codigoHospital" />
                     </td>
                     <td>
                        <xsl:value-of select="localidad" />
                     </td>
                     <td>
                        <xsl:value-of select="numCamas" />
                     </td>
                  </tr>
               </xsl:for-each>
               <tr>
                  <td colspan="4">
                     Número total de hospitales:
                     <xsl:value-of select="count(/hospitales/hospital)" />
                  </td>
               </tr>
            </table>

            <h2>TABLA 2: Hospitales de Madrid</h2>
            <table border="1">
               <tr bgcolor="#9acd32">
                  <th style="text-align:left">Nombre Hospital</th>
                  <th style="text-align:left">Código</th>
                  <th style="text-align:left">Localidad</th>
                  <th style="text-align:left">Número de camas</th>
               </tr>
               <xsl:for-each select="/hospitales/hospital[localidad[contains(text(), 'Madrid')]]">
                  <xsl:sort select="nombre" />
                  <tr>
                     <td>
                        <xsl:value-of select="nombre" />
                     </td>
                     <td>
                        <xsl:value-of select="string(@codigoHospital)" />
                     </td>
                     <td>
                        <xsl:value-of select="localidad" />
                     </td>
                     <td>
                        <xsl:value-of select="numCamas" />
                     </td>
                  </tr>
               </xsl:for-each>
               <tr>
                  <td colspan="4">
                     Número total de hospitales:
                     <xsl:value-of select="count(/hospitales/hospital[localidad[contains(text(), 'Madrid')]])" />
                  </td>
               </tr>
            </table>

            <h2>TABLA 3: Hospitales que no son de Madrid</h2>
            <table border="1">
               <tr bgcolor="#9acd32">
                  <th style="text-align:left">Nombre Hospital</th>
                  <th style="text-align:left">Código</th>
                  <th style="text-align:left">Localidad</th>
                  <th style="text-align:left">Número de camas</th>
               </tr>
               <xsl:for-each select="/hospitales/hospital[localidad[not(contains(text(), 'Madrid'))]]">
                  <xsl:sort select="numCamas" order="descending" data-type="number" />
                  <tr>
                     <td>
                        <xsl:value-of select="nombre" />
                     </td>
                     <td>
                        <xsl:value-of select="@codigoHospital" />
                     </td>
                     <td>
                        <xsl:value-of select="localidad" />
                     </td>
                     <td>
                        <xsl:value-of select="numCamas" />
                     </td>
                  </tr>
               </xsl:for-each>
               <tr>
                  <td colspan="4">
                     Número total de hospitales:
                     <xsl:value-of select="count(/hospitales/hospital[localidad[not(contains(text(), 'Madrid'))]])" />
                  </td>
               </tr>
            </table>



            <h2>TABLA 4.1: HOSPITALES CON ÁREA DE INFLUENCIA DEL MARAÑÓN</h2>
            <table border="1">
               <tr bgcolor="#9acd32">
                  <th style="text-align:left">Nombre Hospital</th>
                  <th style="text-align:left">Código</th>
                  <th style="text-align:left">Localidad</th>
                  <th style="text-align:left">Número de camas</th>
               </tr>

               <xsl:for-each select="//hospital[contains(areaInfluencia, //hospital[contains(nombre,'Gregorio')]/areaInfluencia)]">
                  <tr>
                     <td><xsl:value-of select="nombre"/></td>
                     <td><xsl:value-of select="@codigoHospital"/></td>
                     <td><xsl:value-of select="localidad"/></td>
                     <td><xsl:value-of select="numCamas"/></td>
                  </tr>
               </xsl:for-each>
            </table>

            
            <h2>TABLA 4.2: HOSPITALES CON ÁREA DE INFLUENCIA DEL MARAÑÓN (con variable)</h2>
            <table border="1">

               <tr bgcolor="#9acd32">
                  <th style="text-align:left">Nombre Hospital</th>
                  <th style="text-align:left">Código</th>
                  <th style="text-align:left">Localidad</th>
                  <th style="text-align:left">Número de camas</th>
               </tr>

               <xsl:variable name="areaInfluGrego" select="//hospital[nombre='Hospital Gregorio Marañón']/areaInfluencia"/>
               <xsl:for-each select="//hospital[contains(areaInfluencia, $areaInfluGrego)]">
                  <tr>
                     <td><xsl:value-of select="nombre"/></td>
                     <td><xsl:value-of select="@codigoHospital"/></td>
                     <td><xsl:value-of select="localidad"/></td>
                     <td><xsl:value-of select="numCamas"/></td>
                  </tr>
               </xsl:for-each>
            </table>

            <h2>TABLA 5: ASISA</h2>
            <table border="1">

               <tr bgcolor="#9acd32">
                  <th style="text-align:left">Nombre Hospital</th>
                  <th style="text-align:left">Código</th>
                  <th style="text-align:left">Localidad</th>
                  <th style="text-align:left">Número de camas</th>
               </tr>

               <xsl:for-each select="//hospital[concertado/convenios/compania/@alias='asisa']">
                  <tr>
                     <td><xsl:value-of select="nombre"/></td>
                     <td><xsl:value-of select="@codigoHospital"/></td>

                     <xsl:if test="localidad = 'Madrid'">
                        <td>Hospital situado en Madrid capital</td>
                     </xsl:if>
                     <xsl:if test="localidad != 'Madrid'">
                        <td>Hospital situado en los alrededores de Madrid</td>
                     </xsl:if>


                     <td><xsl:value-of select="numCamas"/></td>
                  </tr>
               </xsl:for-each>
            </table>

         </body>
      </html>
   </xsl:template>
</xsl:stylesheet>
