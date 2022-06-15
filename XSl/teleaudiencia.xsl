<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" indent="yes"/>
<xsl:template match = "/">
    <xsl:apply-templates select ="programacio"/>
</xsl:template>
<xsl:template match="programacio">
<cadenas>
    <nom>Un TV</nom>
        <programas>
          <xsl:apply-templates select="audiencia"/>
        </programas>
</cadenas>
</xsl:template>
    <xsl:template match ="audiencia">
    <programa>
        <xsl:attribute name="hora">
            <xsl:value-of select="hora"/>
        </xsl:attribute>
        <xsl:apply-templates select="cadenes"/>
    </programa>
    </xsl:template>

    <xsl:template match="cadenes">
        <nom_programa>
            <xsl:value-of select ="cadena[@nom='Un TV']/text()"/>
        </nom_programa>
        <audiencia>
            <xsl:value-of select="cadena/@percentatge"/>
        </audiencia>
    </xsl:template>
</xsl:stylesheet>
    
            