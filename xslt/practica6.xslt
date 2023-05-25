<?xml version="1.0" encoding="UTF-8" ?>
<?xml-stylesheet type="text/css" href="../css/practica6.css"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml" version="1.0" indent="yes"/>


    <xsl:template match="workbook">

        <hoteles>
            <titulo>HOTELES</titulo>
            <cabecera>
                <nombreHotel>Hotel</nombreHotel>
                <telfHotel>Telefónos</telfHotel>
                <categorias>Categoria</categorias>
            </cabecera>
            <xsl:for-each select="./sheet[@name='resumen']/*">
                <xsl:sort select="cell[@col=5]" order="descending"/>
                <hotel>
                    <nombre>
                        <xsl:value-of select="cell[@col=2]"/>

                    </nombre>
                    <telefono>

                        <xsl:value-of select="cell[@col=13]"/>


                    </telefono>

                    <categoria>
                        <xsl:value-of select="cell[@col=5]"/>
                    </categoria>

                </hotel>

            </xsl:for-each>


        </hoteles>

    </xsl:template>


</xsl:stylesheet>