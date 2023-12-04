<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <!-- Template general, usando el xpath / -->
    <xsl:template match="/">
        <html>
            <head>
                <title>Ferretería DAW</title>
                <style>
                    .impar {background-color: #e6e6ff}
                    .par {background-color: #ffffcc}
                </style>
            </head>
            <body>
                <div
                    style="width:78%;padding:10px;height:auto;border-style:solid;border-width:2px;text-align:center;font-size:50px;background-color:#c2d6d6;">
        Ferretería DAW
                </div>
                <xsl:for-each select="//categoria">
                        <h2>Categoría: <xsl:value-of select="@nombre"/> (<xsl:value-of select="count(producto)"/> productos)</h2>
                        <table border="1" width="80%"
                            style="text-align:center;">
                            <thead>
                                <tr style="background-color:#6699ff;">
                                    <th width="15%">Nombre</th>
                                    <th width="25%">Descripción</th>
                                    <th width="15%">Precio</th>
                                    <th width="10%">Stock</th>
                                    <th width="15%">Garantía</th>
                                </tr>
                            </thead>
                            <tbody>
                                <!-- generar dinamicamente (for each con sort para de menor a mayor stock)-->
                                <xsl:for-each select="producto">
                                        <xsl:sort select="stock" data-type="number"/>
                                        <!-- if validando modulo de la posicion de las clases par e impar para su colo de fondo -->
                                        <!-- xpath v2.0 -->
                                    <tr class="{if (position() mod 2=0) then 'par' else 'impar'}">
                                            <td><xsl:value-of select="nombre"/></td>
                                            <td><xsl:value-of select="descripcion"/></td>
                                        <!-- condicional si existe descuento o no existe -->    
                                        <xsl:choose>
                                            <xsl:when test="precio/@descuento">
                                                <td><span style="text-decoration:line-through;"><xsl:value-of select="precio"/></span> (- <xsl:value-of select="precio/@descuento"/> %) </td>
                                            </xsl:when>
                                            <xsl:otherwise>
                                                <td><xsl:value-of select="precio"/></td>
                                            </xsl:otherwise>
                                        </xsl:choose>
                                        <!-- choose para color rojo stock-->
                                        <xsl:choose>
                                            <xsl:when test="stock &lt;= ../@bajostock"> <!-- estamos ubicados en producto por lo que retrocedo a categoria -->
                                                <td style="color:red;"> <xsl:value-of select="stock"/></td>
                                            </xsl:when>
                                            <xsl:otherwise>
                                                <td><xsl:value-of select="stock"/></td>
                                            </xsl:otherwise>
                                        </xsl:choose>
                                        <td><xsl:value-of select="garantia/tipo"/> : <xsl:value-of select="garantia/duracion"/> meses</td>
                                    </tr>
                                </xsl:for-each>  
                            </tbody>
                        </table>   
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
<!-- Jesús Sanz Solera DAW1B -->