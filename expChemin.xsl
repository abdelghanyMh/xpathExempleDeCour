<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body style="text-align: justify">
              
                <ul>
                    <li>
                        <h1>list de tt les  att titre </h1>
                        <ul>
                            <li>
                                <h2>1st method</h2>
                                <ul>
                                    <li>
                                        <xsl:for-each select="//@titre">
                                            <h5>
                                                <xsl:value-of select="."/>
                                            </h5>
                                        </xsl:for-each>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <h2>2nd method</h2>
                                <ul>
                                    <li>
                                        <xsl:for-each select="//attribute::titre">
                                            <h5>
                                                <xsl:value-of select="."/>
                                            </h5>
                                        </xsl:for-each>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <h1>list des paragraphe dont a pour titre chapitre1</h1>
                        <ul>
                            <li>
                                <h2>1st method</h2>
                                <ul>
                                    <li>
                                        <xsl:for-each select="//paragraphe[../@titre = 'Chapitre1']">
                                            <h5>
                                                <xsl:value-of select="."/>
                                            </h5>
                                        </xsl:for-each>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <h2>2nd method</h2>
                                <ul>
                                    <li>
                                        <xsl:for-each select="//paragraphe/parent::*[@titre = 'Chapitre1']">
                                            <h5>
                                                <xsl:value-of select="."/>
                                            </h5>
                                        </xsl:for-each>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <h2>3rd method</h2>
                                <ul>
                                    <li>
                                        <xsl:for-each select="//chapitre[@titre = 'Chapitre1']/paragraphe">
                                            <h5>
                                                <xsl:value-of select="."/>
                                            </h5>
                                        </xsl:for-each>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <h1>list des Att de premier auteur(auteur empty ele)</h1>
                        <ul>
                            <li>
                                <h2>1st method</h2>
                                <ul>
                                    <li>
                                        <xsl:for-each select="//auteurs/auteur[1]">
                                            <h3>
                                                <xsl:value-of select="@nom"/>
                                                <xsl:value-of select="@prenom"/>
                                            </h3>
                                        </xsl:for-each>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <h2>2nd method(attribuit::*)</h2>
                                <ul>
                                    <li>
                                        <xsl:for-each select="//auteurs/auteur[1]/attribute::*">
                                            <h3>
                                                <xsl:value-of select="."/>
                                                <!-- aficher-->
                                            </h3>
                                        </xsl:for-each>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <h1>list des chapitre de premier section </h1>
                        <ul>
                            <li>
                                <h2>1st method</h2>
                                <ul>
                                    <li>
                                        <xsl:for-each select="//sections">
                                            <h3>
                                                <xsl:value-of select="section[position() = 1]"/>
                                            </h3>
                                        </xsl:for-each>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <h2>2nd method</h2>
                                <ul>
                                    <li>
                                        <xsl:for-each select="//sections">
                                            <h3>
                                                <xsl:value-of select="section[1]"/>
                                            </h3>
                                        </xsl:for-each>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <h1>list de tt les auteurs</h1>
                        <ul>
                            <li>
                                <h2>1st method</h2>
                                <ul>
                                    <li>
                                        <xsl:for-each select="//auteur/attribute::*">
                                            <h3>
                                                <xsl:value-of select="."/>
                                            </h3>
                                        </xsl:for-each>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <h2>2nd method</h2>
                                <ul>
                                    <li>
                                        <xsl:for-each select="//auteur">
                                            <h3>
                                                <xsl:value-of select="./@nom"/>
                                                <xsl:value-of select="./@prenom"/>
                                            </h3>
                                        </xsl:for-each>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <h1>list de tt les   elemnt de tt chapitre</h1>
                        <ul>
                            <li>
                                <h2>1st method</h2>
                                <ul>
                                    <li>
                                        <xsl:for-each select="//chapitre">
                                            <h3>
                                                <xsl:value-of select="."/>
                                            </h3>
                                        </xsl:for-each>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                </ul>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
<!--

  <h1>list des att titre </h1><h2>1st method</h2><xsl:for-each select="//@titre"><h5><xsl:value-of select="."/></h5></xsl:for-each><h2>2nd method</h2><xsl:for-each select="//attribute::titre"><h5><xsl:value-of select="."/></h5></xsl:for-each><h1>list des paragraphe dont a pour titre chapitre1</h1><h2>1st method</h2><xsl:for-each select="//paragraphe[../@titre = 'Chapitre1']"><h5><xsl:value-of select="."/></h5></xsl:for-each><h2>2nd method</h2><xsl:for-each select="//paragraphe/parent::*[@titre = 'Chapitre1']"><h5><xsl:value-of select="."/></h5></xsl:for-each><h2>3rd method</h2><xsl:for-each select="//chapitre[@titre = 'Chapitre1']/paragraphe"><h5><xsl:value-of select="."/></h5></xsl:for-each><h1>list des Att de premier auteur(auteur empty ele) </h1><h2>1st method</h2><xsl:for-each select="//auteurs/auteur[1]"><h3><xsl:value-of select="@nom"/><xsl:value-of select="@prenom"/></h3></xsl:for-each><h2>2nd method attribuit::*</h2><xsl:for-each select="//auteurs/auteur[1]/attribute::*"><h3><xsl:value-of select="."/></h3></xsl:for-each><h1>list des chapitre de premier section</h1><h2>1st method</h2><xsl:for-each select="//sections"><h3><xsl:value-of select="section[position() = 1]"/></h3></xsl:for-each><h2>2nd method</h2><xsl:for-each select="//sections"><h3><xsl:value-of select="section[1]"/></h3></xsl:for-each><h1>list de tt les auteurs </h1><h2>1st method</h2><xsl:for-each select="//auteur/attribute::*"><h3><xsl:value-of select="."/></h3></xsl:for-each><h2>2nd method</h2><xsl:for-each select="//auteur"><h3><xsl:value-of select="./@nom"/><xsl:value-of select="./@prenom"/></h3></xsl:for-each><h1>list de tt les   elemnt de tt chapitre </h1><h2>1st method</h2><xsl:for-each select="//chapitre"><h3><xsl:value-of select="."/></h3></xsl:for-each>

-->