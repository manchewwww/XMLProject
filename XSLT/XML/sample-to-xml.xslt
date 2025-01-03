<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="xml" indent="yes"/>
  <xsl:template match="/">
    <simpleParts>
      <xsl:for-each select="autoParts/storage/parts">
        <part>
          <name><xsl:value-of select="name"/></name>
          <price><xsl:value-of select="price"/></price>
        </part>
      </xsl:for-each>
    </simpleParts>
  </xsl:template>
</xsl:stylesheet>