<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <style>
                    td{border: 2px inset ;}
                    table tr:first-of-type td{ text-align: center;
                    font-weight: bold; }
                </style>
            </head>
            <body>
            <xsl:apply-templates />
            </body>
        </html>
    </xsl:template>

    <xsl:template match="cifp">

        <h1><xsl:value-of select="@nombre"/></h1>
        <span>Pagina web: <a href=""><xsl:value-of select="@web"/></a></span>
        <xsl:apply-templates select="ciclos"/>
    </xsl:template>


    <xsl:template match="ciclos">

        <table>
            <tr>
                <td>
                    Nombre del ciclo
                </td>
                <td>
                    Grado
                </td>
                <td>
                    Año del título
                </td>
            </tr>
            <xsl:apply-templates select="ciclo"/>
        </table>

    </xsl:template>

    <xsl:template match="ciclo">

        <tr>
            <td>
                <xsl:value-of select="nombre"/>
            </td>
            <td>
                <xsl:value-of select="grado"/>

            </td>
            <td>
                <xsl:value-of select="decretoTitulo/@año"/>

            </td>

        </tr>

    </xsl:template>
</xsl:stylesheet>
