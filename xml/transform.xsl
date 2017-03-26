<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="/">
		<html>
			<head>
				<style rel="stylesheet" type="text/css">
					table{width:100%} 
					td,tr,th{padding:4px;vertical-align:top;font-size:18px}
					h1{display:inline;textalign=center}
				</style>
			</head>
			<body>
			<h2>Questions</h2>
			<table border="1">
				<tr bgcolor="#B4F4FC">
					<th>Title</th>
					<th>Option</th>
					<th>Answer</th>
				</tr>
						
				<xsl:for-each select="questions/question">
					<tr>
						<td><xsl:value-of select="title"/></td>
						<td>
							<xsl:for-each select="option">
								<xsl:value-of select="position()-1"/>:<xsl:value-of select="text()"/><br/>
							</xsl:for-each>
						</td>
						<td>
							<xsl:for-each select="answer">
								<xsl:value-of select="text()"/><br/>
							</xsl:for-each>       
						</td>
					</tr>
				</xsl:for-each>
			</table>
			</body>
		</html>
</xsl:template>

</xsl:stylesheet>