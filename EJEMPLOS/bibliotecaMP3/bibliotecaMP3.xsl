<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
   <xsl:template match="/">
      <html>
         <head>

         </head>
         <body>
            <h1>Ejercicio 1 XSLT</h1>
            <h2>
               <xsl:value-of select="MiBibliotecaMP3/@titulo" />
            </h2>

            <h2>TABLA 1: info del primer y ulti archivo mp3</h2>
            <table style="border:1px solid blue;">
               <tr style="background-color:lightblue;">
                  <th style="text-align:left">Canción</th>
                  <th style="text-align:left">Artista</th>
                  <th style="text-align:left">Disco</th>
               </tr>

               <!-- información del primer archivo mp3-->
               <tr>
                  <td>
                     <xsl:value-of select="//archivo[1]/cancion" />
                  </td>
                  <td>
                     <xsl:value-of select="//archivo[1]/artista" />
                  </td>
                  <td>
                     <xsl:value-of select="//archivo[1]/disco" />
                  </td>
               </tr>

               <!-- información del ulti -->
               <tr>
                  <td>
                     <xsl:value-of select="//archivo[last()]/cancion" />
                  </td>
                  <td>
                     <xsl:value-of select="//archivo[last()]/artista" />
                  </td>
                  <td>
                     <xsl:value-of select="//archivo[last()]/disco" />
                  </td>
               </tr>


            </table>

            <h2>TABLA 2: todos los archivos</h2>
            <table style="border:1px solid blue;">
               <tr style="background-color:lightblue;">
                  <th style="text-align:left">Canción</th>
                  <th style="text-align:left">Artista</th>
                  <th style="text-align:left">Disco</th>
               </tr>
               <xsl:for-each select="//archivo">
                  <tr>
                     <td><xsl:value-of select="cancion" /></td>
                     <td><xsl:value-of select="artista" /></td>
                     <td><xsl:value-of select="disco" /></td>
                  </tr>
               </xsl:for-each>
            </table>

            <h2>TABLA 3: los archivos cuyo disco no haya sido publicadoen 1986</h2>
            <table style="border:1px solid blue;">
               <tr style="background-color:lightblue;">
                  <th style="text-align:left">Canción</th>
                  <th style="text-align:left">Artista</th>
                  <th style="text-align:left">Disco</th>
               </tr>
               <!--
               <xsl:for-each select="//archivo[disco/@anio != 1986]">
                  <tr>
                     <td><xsl:value-of select="cancion" /></td>
                     <td><xsl:value-of select="artista" /></td>
                     <td><xsl:value-of select="disco" /></td>
                  </tr>
               </xsl:for-each>
               -->
               <!--
               <xsl:for-each select="//archivo/disco[@anio != 1986]">
                  <tr>
                     <td><xsl:value-of select="../cancion" /></td>
                     <td><xsl:value-of select="../artista" /></td>
                     <td><xsl:value-of select="." /></td>
                  </tr>
               </xsl:for-each>
               -->
               <xsl:for-each select="//archivo/disco[@anio > 1986]/..">
                  <tr>
                     <td><xsl:value-of select="cancion" /></td>
                     <td><xsl:value-of select="artista" /></td>
                     <td><xsl:value-of select="disco" /></td>
                  </tr>
               </xsl:for-each>
            </table>


            <h2>TABLA 4: todos los archivos ordenados por puntuación descendente</h2>
            <table style="border:1px solid blue;">
               <tr style="background-color:lightblue;">
                  <th style="text-align:left">Canción</th>
                  <th style="text-align:left">Artista</th>
                  <th style="text-align:left">Disco</th>
                  <th style="text-align:left">Puntuación</th>
               </tr>
               <xsl:for-each select="//archivo">
                  <xsl:sort select="puntuacion" data-type="number" order="descending"/>
                  <tr>
                     <td><xsl:value-of select="cancion" /></td>
                     <td><xsl:value-of select="artista" /></td>
                     <td><xsl:value-of select="disco" /></td>
                     <td><xsl:value-of select="puntuacion" /></td>
                  </tr>
               </xsl:for-each>
            </table>

            <!-- PENDIENTE OTRA TABLA CON TODOS LOS ARCHIVOS, PERO DEPENDIENDO DE LA PUNTUACIÓN SALDRÁ
            LA FILA EN DIFERENTES COLORES -->
            <!-- 1. CON IF -->
            <!-- 2. CON CHOOSE -->
            <!-- SI LA PUNTUACIÓN ES 8, EL BACKGROUD SERÁ YELLOW-->
            <!-- <tr style="background-color:yellow">-->

            <!-- SI LA PUNTUACIÓN ES 9, EL BACKGROUD SERÁ ORANGE-->
            <!-- <tr style="background-color:orange">-->

            <!-- SI NO, ROSA-->
            <!-- <tr style="background-color:pink">-->


         </body>
      </html>
   </xsl:template>
</xsl:stylesheet>