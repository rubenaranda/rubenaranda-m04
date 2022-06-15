<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/correos">
        <html>
            <head>
                <title>Correos</title>
                <link href="correos.css" rel="stylesheet" type="text/css" />
            </head>
            <body>
                <h1>Correos</h1>
                <xsl:for-each select="carta">
                    <xsl:sort select ="fechaExpedicion/@dia"/>
                        <xsl:choose>
                            <xsl:when test="@urgente = 'SI'">
                                <div class="rojo">
                                    <table class="carta">
                                        <xsl:apply-templates select ="destinatario"/>
                                        <xsl:apply-templates select ="remite"/>
                                    </table>
                                </div>
                            </xsl:when>
                            <xsl:otherwise>
                                <div class="negro">
                                    <table class="carta">
                                        <xsl:apply-templates select ="destinatario"/>
                                        <xsl:apply-templates select ="remite"/>
                                    </table>
                                </div>
                            </xsl:otherwise>
                        </xsl:choose>
                </xsl:for-each>

            </body>
        </html>
    </xsl:template>


    <xsl:template match="destinatario">
        <table>
            <tr>
                <th colspan="2" class="titulo">DESTINATARIO</th>
            </tr>
            <tr>
                <th>Nombre</th>
                <td><xsl:value-of select="nombre"/></td>
            </tr>
            <tr>
                <th>Direccion</th>
                <td><xsl:value-of select="direccion"/></td>
            </tr>
            <tr>
                <th></th>
                <td><xsl:value-of select="cp"/>,<xsl:value-of select="ciudad"/></td>
            </tr>
            <tr>
                <th></th>
                <td><xsl:value-of select="provincia"/></td>
            </tr>
            <tr>
                <th></th>
                <td><xsl:value-of select="pais"/></td>
            </tr>
            <tr>
                <th>Fecha Expedicion</th>
            </tr>
            <tr>
                <td><xsl:value-of select="../fechaExpedicion/@dia"/>-<xsl:value-of select="../fechaExpedicion/@mes"/>-<xsl:value-of select="../fechaExpedicion/@anyo"/></td>
            </tr>
        </table>
    </xsl:template>
    <xsl:template match="remite">
        <table>
            <tr>
                <th colspan="2" class="titulo">REMITE</th>
            </tr>
            <tr>
                <th>Nombre</th>
                <td><xsl:value-of select="nombre"/></td>
            </tr>
            <tr>
                <th>Direccion</th>
                <td><xsl:value-of select="direccion"/></td>
            </tr>
            <tr>
                <th></th>
                <td><xsl:value-of select="cp"/>,<xsl:value-of select="ciudad"/></td>
            </tr>
            <tr>
                <th></th>
                <td><xsl:value-of select="provincia"/></td>
            </tr>
            <tr>
                <th></th>
                <td><xsl:value-of select="pais"/></td>
            </tr>
            <tr>
                <th>Fecha Expedicion</th>
            </tr>
            <tr>
                <xsl:choose>
                    <xsl:when test ="../fechaEntrega/@dia = '0'">
                        <td>No entregado</td>
                    </xsl:when>
                <xsl:otherwise>
                <td><xsl:value-of select="../fechaEntrega/@dia"/>-<xsl:value-of select="../fechaEntrega/@mes"/>-<xsl:value-of select="../fechaEntrega/@anyo"/></td>
                </xsl:otherwise>
                </xsl:choose>
            </tr>
        </table>
    </xsl:template>
</xsl:stylesheet>
