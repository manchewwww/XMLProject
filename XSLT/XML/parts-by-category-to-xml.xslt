<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="xml" indent="yes"/>
  <xsl:template match="/">
    <categories>
      <xsl:for-each select="autoParts/storage/parts">
        <category name="{category}">
          <part>
            <name><xsl:value-of select="name"/></name>
            <brand><xsl:value-of select="brand"/></brand>
          </part>
        </category>
      </xsl:for-each>
    </categories>
  </xsl:template>
</xsl:stylesheet>