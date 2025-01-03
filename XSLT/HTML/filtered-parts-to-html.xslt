<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" encoding="UTF-8" indent="yes"/>
  <xsl:template match="/">
    <html>
      <head>
        <title>Filtered Parts</title>
      </head>
      <body>
        <h1>New Parts</h1>
        <ul>
          <xsl:for-each select="autoParts/storage/parts[condition='New']">
            <li>
              <xsl:value-of select="name"/> - <xsl:value-of select="price"/> EUR
            </li>
          </xsl:for-each>
        </ul>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>