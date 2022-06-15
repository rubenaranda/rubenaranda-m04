<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/root/prediccion">
    <html>
        <head>
            <title>Aemet</title>
        </head>
        <body>
          <table style = "border: 1px solid black" border="3">
            <tr>
                <th>Fecha</th>
                <th>Maxima</th>
                <th>Minima</th>
                <th>Prediccion</th>
            </tr>
            <xsl:for-each select="dia">
            <xsl:sort select="temperatura/maxima" order="descending"/>
            <tr>
                <th><xsl:value-of select="@fecha"/></th>
                <th><xsl:value-of select="temperatura/maxima"/></th>
                <th><xsl:value-of select="temperatura/minima"/></th>
                <th><xsl:value-of select="estado_cielo[@periodo='00-12']"/></th>
            </tr>
            </xsl:for-each>
            </table>
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>
