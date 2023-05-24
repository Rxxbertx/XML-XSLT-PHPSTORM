<?xml version='1.0'?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
    <xsl:template match="/">
        <html>
            <body>
                <table border="1" width="50%">
                    <xsl:apply-templates select="items/item"/>
                </table>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="items/item">
        <tr>
            <td><xsl:number value="position()" format="1"/></td>

            <td><xsl:number value="position()"/> de  <xsl:number value="last()"/> </td>

            <xsl:if test="text()='Grapadora'">
                <xsl:attribute name="bgcolor">yellow</xsl:attribute>
            </xsl:if>


            <td><xsl:value-of select="."/></td>
        </tr>
    </xsl:template>
</xsl:stylesheet>