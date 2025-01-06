<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" encoding="UTF-8" indent="yes"/>
  <xsl:template match="/">
    <html>
      <head>
        <title>Suppliers List</title>
      </head>
      <body>
        <h1>Suppliers</h1>
        <ul>
          <xsl:for-each select="autoParts/suppliers/supplier">
            <li>
              <strong><xsl:value-of select="supplierName"/></strong><br/>
              ID: <xsl:value-of select="@supplierID"/><br/>
              Phone: <xsl:value-of select="phone"/><br/>
              Email: <xsl:value-of select="email"/><br/>
              Address: <xsl:value-of select="address"/><br/>
              Location: <xsl:value-of select="location"/><br/>
            </li>
          </xsl:for-each>
        </ul>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>