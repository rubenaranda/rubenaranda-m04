<?xml version="1.0" encoding="UTF-8"?>
<!--cat /discos/group[@id] // Grupos por el ID
    /discos/group[@id]/name // Nombre de los grupos
    /discos/group[@id]/member // Miembros del grupo -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" indent="yes"/>
<xsl:variable name="id_muse" select="/discos/group[1]/@id"/>
<xsl:variable name="id_feeder" select ="/discos/group[2]/@id"/>
<xsl:variable name="name_feeder" select ="/discos/group[2]/name"/>
<xsl:variable name="name_muse" select ="/discos/group[1]/name"/>
<xsl:template match="discos">
    <lista>
        <xsl:apply-templates select ="disco"/>
    </lista>
</xsl:template>

<xsl:template match="disco">
        <xsl:choose>
            <xsl:when test="interpreter/@id = $id_muse">
                <disco><xsl:value-of select="title"/> interpretado por <xsl:value-of select="$name_muse"/></disco>
            </xsl:when>
            <xsl:otherwise>
                <disco><xsl:value-of select="title"/> interpretado por <xsl:value-of select="$name_feeder"/></disco>
            </xsl:otherwise>
        </xsl:choose>
</xsl:template>
</xsl:stylesheet>

            
    
