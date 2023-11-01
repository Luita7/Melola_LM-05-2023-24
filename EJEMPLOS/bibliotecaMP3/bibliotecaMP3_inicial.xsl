<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
   <xsl:template match="/">
      <html>
         <body>
            <h1>Ejercicio 1 XSLT</h1>
            <h2>TABLA 1</h2>
            <h2>
               <xsl:value-of select="MiBibliotecaMP3/titulo" />
            </h2>
            <table style="border:1px solid blue;">
               <tr style="background-color:lightblue;">
                  <th style="text-align:left">Título</th>
                  <th style="text-align:left">Artista</th>
                  <th style="text-align:left">Disco</th>
               </tr>
            </table>
         </body>
      </html>
   </xsl:template>
</xsl:stylesheet>
