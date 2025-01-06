<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="text" encoding="UTF-8"/>
  <xsl:template match="/">
    <xsl:for-each select="autoParts/suppliers/supplier">
      Supplier: <xsl:value-of select="supplierName"/> - Location: <xsl:value-of select="location"/>&#10;
    </xsl:for-each>
  </xsl:template>
</xsl:stylesheet>