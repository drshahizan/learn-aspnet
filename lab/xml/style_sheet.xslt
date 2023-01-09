<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="Author">
	<xsl:value-of select="FirstName"/>
	<xsl:value-of select="LastName"/>
	<xsl:if test="position()!=last()">,</xsl:if>
</xsl:template>
<xsl:template match="/">
	<HTML>
	<HEAD><TITLE>BOOKS AT WEBSHOPPE</TITLE></HEAD>	
	<BODY>
	<H1>BOOKS AT WEBSHOPPE</H1>
	<TABLE BORDER="3" CELLSPACING="2" CELLPADDING="6">
	<THEAD ALIGN="CENTER" BGCOLOR="SILVER">
		<TH> BOOK ID </TH>
		<TH> TITLE </TH>
		<TH> PRICE </TH>
		<TH> AUTHOR(S) </TH>
	</THEAD>
	<TBODY>
		<xsl:for-each select="books/book">
		<TR>
			<TD><font color="green">
			<xsl:value-of select="bookid"/></font></TD>
			<TD><xsl:value-of select="title"/></TD>
			<TD><xsl:value-of select="Price"/></TD>
			<TD><xsl:apply-templates select="Author"/></TD>
		</TR>
		</xsl:for-each>
	</TBODY>
	</TABLE>
	</BODY>
	</HTML>
</xsl:template>
</xsl:stylesheet>

  