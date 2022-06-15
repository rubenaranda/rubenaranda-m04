<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/programacio">
<cadena>
    <nom>Un TV</nom>
    <programas>
    <xsl:apply-templates select="audiencia" />
    </programas>
    <programas2>
    <xsl:attribute name="hora">
        <xsl:value-of select="audiencia/hora" />
    </xsl:attribute>
    <xsl:for-each select="audiencia">
        <xsl:apply-templates select="cadenes/cadena" />
    </xsl:for-each>
    </programas2>
</cadena>
</xsl:template>
<xsl:template match="audiencia">
    <programa>
     <xsl:attribute name="hora">
            <xsl:value-of select="hora" />
        </xsl:attribute> 
        <xsl:apply-templates select="cadenes/cadena" />
    </programa>
</xsl:template>
<xsl:template match="cadenes/cadena">
    <xsl:choose>
        <xsl:when test="@nom='Un TV'">
            <nom-programa>
            <xsl:value-of select="text()" />
            </nom-programa>
            <audiencia>
            <xsl:value-of select="@percentatge" />
            </audiencia>
        </xsl:when>
    </xsl:choose>
</xsl:template>
</xsl:stylesheet>