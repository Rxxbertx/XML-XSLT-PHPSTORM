<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
        <html lang="en">
            <head>
                <meta charset="UTF-8"/>
                <title>Document</title>

                <style>
                    div{border:4px solid yellow; background-color: orange; padding: 30px}
                </style>

            </head>
            <body>
                <div>
                <xsl:apply-templates select="editoriales/editorial"/>
                </div>
            </body>
        </html>

    </xsl:template>

    <xsl:template match="editorial">




            <h2>

                <xsl:attribute name="style">font-weight: bold; color: blue; text-decoration: underline</xsl:attribute>


                Informacion de Editorial


            </h2>



        <p>
            <xsl:apply-templates/>
        </p>


    </xsl:template>


</xsl:stylesheet>