<?xml version="1.0" encoding="ISO-8859-15"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:template match="/">
		<html>
			<body>
				<h1>Ejemplo plantillas</h1>
				<xsl:apply-templates/>
			</body>
		</html>
	</xsl:template>
	
	<xsl:template match="libreria">
		<h2>Mi biblioteca</h2>
		<table border="1px">
			<tr bgcolor="#DBD8AE">
				<th>TÍtulo</th>
				<th>Autor</th>
				<th>Precio</th>
			</tr>
			<xsl:apply-templates select="libro"/>
		</table>
	</xsl:template>
	
	<xsl:template match="libro">
		<tr>
			<xsl:apply-templates select="titulo"/>
			<xsl:apply-templates select="autor"/>
			<xsl:apply-templates select="precio"/>
		</tr>
	</xsl:template>
	
	<xsl:template match="titulo">
		<td bgcolor="#EAF4D3"><xsl:value-of select="."/></td>
	</xsl:template>
	
	<xsl:template match="autor">
		<td bgcolor="#EAF4D3"><xsl:value-of select="."/></td>
	</xsl:template>
	
	<xsl:template match="precio">
		<td bgcolor="#EAF4D3"><xsl:value-of select="."/></td>
	</xsl:template>

</xsl:stylesheet>
