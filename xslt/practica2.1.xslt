<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">


        <html lang="en">
            <head>
                <meta charset="UTF-8"/>
                <title>Document</title>

                <style>

                    body{background: #28d0d4;}
                    tr.cabecera{
                    text-align: center;
                    font-weight: bold;
                    }
                     td {
                    border: 1px white outset;
                    }


                </style>


            </head>
            <body>

                <h1>Lista de albums</h1>

                <xsl:apply-templates/>
            </body>
        </html>

    </xsl:template>

        <xsl:template match="cd">
            <h3><xsl:value-of select="tituloAlbum"/>-<xsl:value-of select="nombreInterprete"/></h3>

            <table>

                <tr class="cabecera">

                    <td>pista</td>
                    <td>titulo</td>
                    <td>duracion</td>

                </tr>

                <xsl:apply-templates select="pista"/>


            </table>

        </xsl:template>

        <xsl:template match="pista">

            <tr>
                <td><xsl:value-of select="num"/></td>
                <td><xsl:value-of select="titulo"/></td>
                <td><xsl:value-of select="duracion"/></td>
            </tr>

        </xsl:template>




</xsl:stylesheet>