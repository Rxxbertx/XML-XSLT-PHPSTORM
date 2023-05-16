<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>
    <xsl:template match="empleado">
        <p style="color:blue">
            <b>
                <xsl:apply-templates select="apellido|nombre"/>
            </b>
        </p>
    </xsl:template>
    <xsl:template match="nombre">
        <p style="color:red">
            <i>
                <xsl:value-of select="."/>
            </i>
        </p>
    </xsl:template>
</xsl:stylesheet>


