<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="text" encoding="UTF-8"/>
  <xsl:template match="/">
    <xsl:for-each select="autoParts/storage/parts">
      <xsl:value-of select="name"/>: <xsl:value-of select="price"/> EUR&#10;
    </xsl:for-each>
  </xsl:template>
</xsl:stylesheet>