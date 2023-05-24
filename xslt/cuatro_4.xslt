<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">
	<xsl:output method="html" encoding="UTF-8" indent="yes"/>

	<xsl:template match="AAA">
		<div style="color:purple">
			<xsl:value-of select="name()"/>
			<xsl:text> id=</xsl:text>
			<xsl:value-of select="@id"/>
			<xsl:apply-templates/>
		</div>
	</xsl:template>
	<xsl:template match="BBB">
		<div style="color:blue">
			<xsl:value-of select="name()"/>
			<xsl:text> id=</xsl:text>
			<xsl:value-of select="@id"/>
			<xsl:apply-templates/>
		</div>
	</xsl:template>
	<xsl:template match="CCC">
	<xsl:apply-templates/>
		<div style="color:maroon">
			<xsl:value-of select="name()"/>
			<xsl:text> id=</xsl:text>
			<xsl:value-of select="@id"/>
		</div>
	</xsl:template>
	<xsl:template match="DDD">
		<div style="color:green">
			<xsl:value-of select="name()"/>
			<xsl:text> id=</xsl:text>
			<xsl:value-of select="@id"/>
		</div>
	</xsl:template>
</xsl:stylesheet>