<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Hacettepe Gazete - XML Görünümü</title>
                <style>
                    body { font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; background-color: #f0f2f5; margin: 0; padding: 20px; }
                    .container { max-width: 900px; margin: auto; background: white; padding: 30px; border-radius: 8px; box-shadow: 0 4px 15px rgba(0,0,0,0.1); }
                    header { border-bottom: 3px solid #b11f24; margin-bottom: 20px; padding-bottom: 10px; display: flex; justify-content: space-between; align-items: center; }
                    h1 { color: #b11f24; margin: 0; font-size: 28px; }
                    .featured { background: #fff5f5; border-left: 5px solid #b11f24; padding: 20px; margin-bottom: 30px; }
                    .featured h2 { margin-top: 0; color: #333; }
                    .article-card { border: 1px solid #eee; padding: 15px; margin-bottom: 15px; border-radius: 5px; transition: 0.3s; }
                    .article-card:hover { border-color: #b11f24; background-color: #fafafa; }
                    .meta { font-size: 0.85em; color: #666; margin-bottom: 10px; }
                    .tag { background: #b11f24; color: white; padding: 2px 8px; border-radius: 4px; font-size: 0.8em; margin-right: 5px; }
                    .author { font-weight: bold; color: #444; }
                    footer { margin-top: 40px; text-align: center; font-size: 0.9em; color: #888; border-top: 1px solid #eee; padding-top: 20px; }
                </style>
            </head>
            <body>
                <div class="container">
                    <header>
                        <h1><xsl:value-of select="gazete_hacettepe/metadata/title"/></h1>
                        <span><xsl:value-of select="gazete_hacettepe/metadata/language"/></span>
                    </header>

                    <div class="featured">
                        <small>ÖNE ÇIKAN HABER</small>
                        <h2><xsl:value-of select="gazete_hacettepe/content/featured_news/title"/></h2>
                        <p><xsl:value-of select="gazete_hacettepe/content/featured_news/summary"/></p>
                    </div>

                    <h3>Son Haberler</h3>
                    <xsl:for-each select="gazete_hacettepe/content/articles/article">
                        <div class="article-card">
                            <div class="meta">
                                <span class="tag"><xsl:value-of select="category"/></span>
                                <span><xsl:value-of select="date"/></span> | 
                                <span class="author"><xsl:value-of select="author"/></span>
                            </div>
                            <h2><xsl:value-of select="title"/></h2>
                            <p><xsl:value-of select="faculty"/></p>
                        </div>
                    </xsl:for-each>

                    <footer>
                        <p><xsl:value-of select="gazete_hacettepe/metadata/copyright"/></p>
                        <p><xsl:value-of select="gazete_hacettepe/footer/contact_info/address"/></p>
                    </footer>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>