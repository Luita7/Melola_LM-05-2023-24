<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
   <xsl:template match="/">
      <html>
         <body>
            <h2>Jugadores de futbol 2017-2018</h2>
            <table border="1">
               <tr>
                  <th>Nombre</th>
                  <th>Año de nacimiento</th>
                  <th>Equipo</th>
                  <th>Web</th>
                  <th>Foto</th>
               </tr>
               <tr>
                  <td>Lionel Andrés Messi</td>
                  <td>1987</td>
                  <td>
                     <ul>
                        <li>F.C. Barcelona</li>
                     </ul>
                  </td>
                  <td>
                     <a target="_blank" href="https://messi.com/">https://messi.com/</a>
                  </td>
                  <td>
                     <img src="imagenes/messi.jpg" />
                  </td>
               </tr>
               <tr>
                  <td>Cristiano Ronaldo</td>
                  <td>1985</td>
                  <td>
                     <ul>
                        <li>Real Madrid</li>
                        <li>Manchester United</li>
                        <li>Sporting Club de Portugal</li>
                     </ul>
                  </td>
                  <td>
                     <a href="http://www.cristianoronaldo.com/">http://www.cristianoronaldo.com/</a>
                  </td>
                  <td>
                     <img src="imagenes/ronaldo.jpg" />
                  </td>
               </tr>
               <tr>
                  <td>Antoine Griezmann</td>
                  <td>1991</td>
                  <td>
                     <ul>
                        <li>Club Atlético de Madrid</li>
                        <li>Real Sociedad</li>
                     </ul>
                  </td>
                  <td></td>
                  <td>
                     <img src="imagenes/griezmann.jpg" />
                  </td>
               </tr>
            </table>
         </body>
      </html>
   </xsl:template>
</xsl:stylesheet>