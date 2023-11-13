<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   <xsl:template match="/">
      <html>
         <body>
            <h1>Universidad de Alcalá de Henares</h1>
            <h2>Informe de notas finales 2023-2024</h2>

            <table border="1">
               <tr>
                  <th>FOTO</th>
                  <th>PRIMER APELLIDO</th>
                  <th>NOMBRE</th>
                  <th>CARRERA</th>
                  <th>NUM ASIGNATURAS</th>
                  <th>ASIGNATURAS</th>
               </tr>
               <xsl:apply-templates select="//alumno"/>
            </table>
         </body>
      </html>
   </xsl:template>

   <xsl:template match="//alumno">
               <!-- un tr por cada alumno-->
                  <tr>
                     <td>
                        <img src="imagenes/{@avatar}"/>
                     </td>
                     <td><xsl:value-of select="apellido1"/></td>
                     <td><xsl:value-of select="nombre"></xsl:value-of></td>

                     <!-- EN OBSERVACIÓN xpath anidado -->
                     <!--<td><xsl:value-of select="../../carreras/carrera[@id=//estudios/carrera/@codigo]/nombre"/></td>-->

                     <!-- mostrar el nombre de la carrera. Dos opciones: xpath anidado, con variables-->
                     <xsl:variable name="codCarrera" select="estudios/carrera/@codigo"/>
                     <td><xsl:value-of select="../../carreras/carrera[@id=$codCarrera]/nombre"/></td>

                     <!-- número de asignaturas -->
                     <td><xsl:value-of select="count(estudios/asignaturas/asignatura)"/></td>

                     <!-- lista de asignaturas y la nota-->
                     <td>
                        <ul>
                           <xsl:apply-templates select="estudios/asignaturas/asignatura"/>
                        </ul>
                     </td>
                  </tr>
   </xsl:template>

   <xsl:template match="//asignatura">
         <!-- SE CREARÁN TANTOS LI COMO ASIGNATURAS TENGA UN ALUMNO -->
            <xsl:variable name="codAsig" select="@codigo"/>

            <li>
               <!-- PRIMERO SALE EL NOMBRE DE LA ASIGNATURA -->
               <xsl:value-of select="//asignaturas/asignatura[@id = $codAsig]/nombre"/> 
               <!-- DESPUÉS, MEDIANTE CONDICIONAL SALE UN TEXTO U OTRO -->
               <xsl:if test="@final >= 5">
                  [APROBADO]
               </xsl:if>
               <xsl:if test="@final &lt; 5">
                  [SUPENSO]
               </xsl:if>
            </li>
   </xsl:template>
</xsl:stylesheet>
