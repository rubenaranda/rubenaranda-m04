<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match = "/evaluacion">
        <html>
            <body>
                <table style = "border: 1px solid black">
                    <tr style = "background-color:green">
                        <th style="text-align:center">Nombre</th>
                        <th style="text-align:center"> Apellidos </th>
                        <th style="text-align:center">Telefono</th>
                        <th style="text-align:center">Repetidor</th>
                        <th style="text-align:center">Nota Practica</th>
                        <th style="text-align:center">Nota Examen</th>
                        <th style="text-align:center">Nota Total</th>
                        <th style="text-align:center">Foto Perfil</th>
                    </tr>
                    <xsl:for-each select ="alumno">
                    <tr>
                        <th><xsl:value-of select="nombre"></xsl:value-of></th>
                        <th><xsl:value-of select="apellidos"></xsl:value-of></th>
                        <th><xsl:value-of select="telefono"></xsl:value-of></th>
                        <th><xsl:value-of select="@repite"></xsl:value-of></th>
                        <xsl:apply-templates select="notas"/>
                        <th>
                            <image>
                                <xsl:attribute name="src">
                                     <xsl:value-of select="image/src"></xsl:value-of>
                                </xsl:attribute>
                            </image>
                       </th>
                    </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="notas">
        <th><xsl:value-of select="practicas"></xsl:value-of></th>
        <th><xsl:value-of select="examen"></xsl:value-of></th>
        <xsl:choose>
            <xsl:when test="((practicas + notas))/2&lt;=5">
                <th style="color:red"><xsl:value-of select="((practicas + notas))/2"></xsl:value-of></th>
            </xsl:when>

            <xsl:when test="((practicas + notas))/2&gt;=8">
                <th style="color:blue"><xsl:value-of select="((practicas + notas))/2"></xsl:value-of></th>
            </xsl:when>

            <xsl:otherwise>
                <th><xsl:value-of select="((practicas + notas))/2"></xsl:value-of></th>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

</xsl:stylesheet>