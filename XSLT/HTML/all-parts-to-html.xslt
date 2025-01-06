<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" encoding="UTF-8" indent="yes"/>
  <xsl:template match="/">
    <html>
      <head>
        <title>Parts table</title>
      </head>
      <body>
        <h1>Parts Table</h1>
        <table border="1">
          <tr>
            <th>Code</th>           
            <th>Origin</th>
            <th>Name</th>
            <th>Category</th>
            <th>Brand</th>
            <th>Price</th>
            <th>Quantity</th>
            <th>Manufacturer date</th>
            <th>Warranty</th>
            <th>Condition</th>
          </tr>
          <xsl:for-each select="autoParts/storage/parts">
            <tr>
              <td><xsl:value-of select="@code"/></td>
              <td><xsl:value-of select="@origin"/></td>
              <td><xsl:value-of select="name"/></td>
              <td><xsl:value-of select="category"/></td>
              <td><xsl:value-of select="brand"/></td>
              <td><xsl:value-of select="price"/></td>
              <td><xsl:value-of select="quantity"/></td>
              <td><xsl:value-of select="@manufacturerDate"/></td>
              <td><xsl:value-of select="@warranty"/></td>
              <td><xsl:value-of select="condition"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>