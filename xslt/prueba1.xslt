<?xml version='1.0'?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
    <xsl:template match="/">
        <html>
            <body>
                <table border="1" width="50%">
                    <xsl:apply-templates/>
                </table>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="item">
        <tr>
            <xsl:if test="text()='Grapadora'">
                <xsl:attribute name="bgcolor">yellow</xsl:attribute>
            </xsl:if>
            <xsl:value-of select="."/>
        </tr>
    </xsl:template>
</xsl:stylesheet>