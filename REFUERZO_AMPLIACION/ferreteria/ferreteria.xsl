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
        <div style="width:78%;padding:10px;height:auto;border-style:solid;border-width:2px;text-align:center;font-size:50px;background-color:#c2d6d6;">
        Ferretería DAW
        </div>
        <h2>Categoría: destornilladores (3 productos)</h2>
        <table border="1" width="80%" style="text-align:center;">
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
            <tr class="impar">
                <td>Destornillador plano A</td>
                <td>Destornillador plano A mango madera</td>
                <td><span style="text-decoration:line-through;">1000</span> (-20%)
                    </td>
                <td style="color:red;">2</td>
                <td>avanzada: 40 meses</td>
            </tr>
            <tr class="par">
                <td>Destornillador plano B</td>
                <td>Destornillador plano B mango plastico</td>
                <td>900</td>
                <td>31</td>
                <td>reducida: 12 meses</td>
            </tr>
            <tr class="impar">
                <td>Destornillador estrella 5</td>
                <td>Estralla tamaño 5 con mango de plastico</td>
                <td><span style="text-decoration:line-through;">800</span> (-10%)
                    </td>
                <td>41</td>
                <td>normal: 24 meses</td>
            </tr>
        </tbody>
        </table>


        
        <h2>Categoría: tornillos (6 productos)</h2>
        <table border="1" width="80%" style="text-align:center;">
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
            <tr class="impar">
                <td>Tornillo P2</td>
                <td>Tornillo P2</td>
                <td><span style="text-decoration:line-through;">18</span> (-20%)
                    </td>
                <td style="color:red;">1142</td>
                <td>normal: 24 meses</td>
            </tr>
            <tr class="par">
                <td>Tornillo P3</td>
                <td>Tornillo P3</td>
                <td>7</td>
                <td style="color:red;">1921</td>
                <td>reducida: 12 meses</td>
            </tr>
            <tr class="impar">
                <td>Tornillo B1</td>
                <td>Tornillo B1</td>
                <td>11</td>
                <td>4085</td>
                <td>normal: 24 meses</td>
            </tr>
            <tr class="par">
                <td>Tornillo P1</td>
                <td>Tornillo P1</td>
                <td>20</td>
                <td>7885</td>
                <td>normal: 24 meses</td>
            </tr>
            <tr class="impar">
                <td>Tornillo B2</td>
                <td>Tornillo B2</td>
                <td><span style="text-decoration:line-through;">10</span> (-10%)
                    </td>
                <td>20321</td>
                <td>avanzada: 40 meses</td>
            </tr>
            <tr class="par">
                <td>Tornillo C</td>
                <td>Tornillo C</td>
                <td>2</td>
                <td>23131</td>
                <td>reducida: 12 meses</td>
            </tr>
        </tbody>
        </table>
        <h2>Categoría: martillos (2 productos)</h2>
        <table border="1" width="80%" style="text-align:center;">
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
            <tr class="impar">
                <td>Martillo doble agarre</td>
                <td>Martillo con doble agarre para uso intensivo</td>
                <td><span style="text-decoration:line-through;">2200</span> (-40%)
                    </td>
                <td style="color:red;">13</td>
                <td>avanzada: 40 meses</td>
            </tr>
            <tr class="par">
                <td>Martillo madera</td>
                <td>Martillo con mango de madera</td>
                <td>1100</td>
                <td>24</td>
                <td>reducida: 12 meses</td>
            </tr>
        </tbody>
        </table>
    </body>
    </html>  
  </xsl:template>
</xsl:stylesheet>