<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output encoding="utf-8" method="html" indent="yes"/>


    <xsl:template match="clase">

        <html lang="en">
            <head>
                <meta charset="UTF-8"/>
                <meta name="viewport"
                      content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"/>
                <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
                <title>Document</title>

                <style>
                    body {background: cyan}
                    td{border: 2px solid white; padding:2.5px}
                    tr.cabecera {text-align: center; font-weight: bold;}

                </style>

            </head>
            <body>

                <h1>LISTA DE ALUMNOS</h1>

                <table>
                    <tr class="cabecera">
                        <td>
                            Alumno
                        </td>
                        <td>
                            1 evaluacion
                        </td>
                        <td>
                            2º evaluacion
                        </td>
                        <td>
                            3º evaluacion
                        </td>
                        <td>Final</td>
                    </tr>

                    <xsl:for-each select="alumno">
                        <xsl:sort select="apellidos"/>
                        <xsl:sort select="nombre"/>

                        <tr>
                            <xsl:if test="round((notas/eva1+notas/eva2+notas/eva3)div 3) &lt; 5">
                                <xsl:attribute name="style">background: red</xsl:attribute>
                            </xsl:if>

                            <td><xsl:value-of select="apellidos"/>-<xsl:value-of select="nombre"/></td>
                            <td><xsl:value-of select="notas/eva1"/></td>
                            <td><xsl:value-of select="notas/eva2"/></td>
                            <td><xsl:value-of select="notas/eva3"/></td>
                            <td><xsl:value-of select=" round((notas/eva1+notas/eva2+notas/eva3)div 3)"/></td>

                        </tr>


                    </xsl:for-each>

                </table>

            </body>
        </html>


    </xsl:template>


</xsl:stylesheet>