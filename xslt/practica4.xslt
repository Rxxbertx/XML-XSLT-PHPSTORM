<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" indent="yes" encoding="utf-8"/>

    <xsl:template match="/">

        <html lang="en">
            <head>
                <meta charset="UTF-8"/>

                <title>Document</title>

                <link rel="stylesheet" type="text/css" href="./css/practica4.css" />

            </head>
            <body>

                <h1>LISTA DE VUELOS</h1>
                <xsl:apply-templates select="tarjetavuelos/vuelo"/>
            </body>
        </html>

    </xsl:template>


    <xsl:template match="vuelo">

        <h3>
            <xsl:value-of select="numero"/>
        </h3>
        <h3>
            <xsl:value-of select="avion"/>
        </h3>

        <xsl:apply-templates select="ruta"/>
        <xsl:apply-templates select="pilotos"/>
        <table>
            <xsl:apply-templates select="PNC/*"/>
        </table>


    </xsl:template>

    <xsl:template match="ruta">

        <table>

            <tr class="negrita centrado">
                <td>origen</td>
                <td>destino</td>
                <td>fecha</td>
            </tr>

            <tr>
<xsl:attribute name="style">background: red</xsl:attribute>
                <td>
                    <xsl:value-of select="aeropuerto_origen"/>
                </td>
                <td>
                    <xsl:value-of select="aeropuerto_destino"/>
                </td>
                <td>
                    <xsl:value-of select="fecha_salida"/>
                </td>
            </tr>
        </table>

    </xsl:template>

    <xsl:template match="pilotos">

        <table>
            <tr class="negrita centrado">
                <td>piloto</td>
                <td>copiloto</td>
            </tr>
            <tr>
                <xsl:attribute name="style">background: red</xsl:attribute>
                <td>
                    <xsl:value-of select="CDB"/>
                </td>
                <td>
                    <xsl:apply-templates select="COPI"/>
                </td>
            </tr>
        </table>


    </xsl:template>

    <xsl:template match="COPI">


        <xsl:value-of select="node()"/>
        <xsl:if test="position()!=count(../COPI)">
            -
        </xsl:if>

    </xsl:template>

    <xsl:template match="PNC/*">

        <tr>
            <xsl:attribute name="style">background: red</xsl:attribute>
            <td>
                <xsl:value-of select="name()"/>
            </td>
            <td>
                <xsl:value-of select="text()"/>
            </td>
        </tr>

    </xsl:template>


</xsl:stylesheet>










