<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" encoding="UTF-8" indent="yes"/>
  <xsl:template match="/">
    <html>
      <head>
        <title>Parts table</title>
      </head>
      <body>
        <h1>Parts List Dimensions</h1>
        <table border="1">
          <tr>
            <th>Code</th>
            <th>Name</th>
            <th>Width</th>
            <th>Height</th>
            <th>Length</th>
          </tr>
          <xsl:for-each select="autoParts/storage/parts">
            <tr>
              <td><xsl:value-of select="@code"/></td>
              <td><xsl:value-of select="name"/></td>
              <td><xsl:value-of select="dimensions/width"/></td>
              <td><xsl:value-of select="dimensions/height"/></td>
              <td><xsl:value-of select="dimensions/length"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>