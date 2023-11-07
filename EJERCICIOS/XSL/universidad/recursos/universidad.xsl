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
               <tr>
                  <td>
                     <img src="imagenes/avatar1.jpg">
                  </td>
                  <td>Rivas</td>
                  <td>Victor Manuel</td>
                  <td>I.T.Informatica</td>
                  <td>4</td>
                  <td>
                     <ul>
                        <li>Ofimatica
                     [APROBADO]
                     </li>
                        <li>Administracion de Empresas
                     [SUSPENSO]
                     </li>
                        <li>Ingenieria del Software
                     [APROBADO]
                     </li>
                        <li>Derecho Internacional
                     [APROBADO]
                     </li>
                     </ul>
                  </td>
               </tr>
               <tr>
                  <td>
                     <img src="imagenes/avatar2.jpg">
                  </td>
                  <td>Perez</td>
                  <td>Luisa</td>
                  <td>Dipl.Empresariales</td>
                  <td>2</td>
                  <td>
                     <ul>
                        <li>Ingenieria del Software
                     [APROBADO]
                     </li>
                        <li>Ofimatica
                     [APROBADO]
                     </li>
                     </ul>
                  </td>
               </tr>
               <tr>
                  <td>
                     <img src="imagenes/avatar4.jpg">
                  </td>
                  <td>Perez</td>
                  <td>Fernando</td>
                  <td>Dipl.Empresariales</td>
                  <td>1</td>
                  <td>
                     <ul>
                        <li>Derecho Internacional
                     [APROBADO]
                     </li>
                     </ul>
                  </td>
               </tr>
               <tr>
                  <td>
                     <img src="imagenes/avatar3.jpg">
                  </td>
                  <td>Avalon</td>
                  <td>Mara</td>
                  <td>I.T.Informatica</td>
                  <td>3</td>
                  <td>
                     <ul>
                        <li>Ingenieria del Software
                     [APROBADO]
                     </li>
                        <li>Ofimatica
                     [SUSPENSO]
                     </li>
                        <li>Bases de Datos
                     [APROBADO]
                     </li>
                     </ul>
                  </td>
               </tr>
            </table>
         </body>
      </html>
   </xsl:template>
</xsl:stylesheet>
