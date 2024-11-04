<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:oai_dc="http://www.openarchives.org/OAI/2.0/oai_dc/"
    xmlns:oai_qdc="http://worldcat.org/xmlschemas/qdc-1.0/"
    xmlns:dc="http://purl.org/dc/elements/1.1/" version="1.0"
    xmlns:dcterms="http://purl.org/dc/terms/"
    xmlns:oai="http://www.openarchives.org/OAI/2.0/"
    xmlns:mods="http://www.loc.gov/mods/v3"
    xmlns:dcmitype="http://purl.org/dc/dcmitype/">

    <xsl:output omit-xml-declaration="yes" method="html"/>
    <xsl:template match="/">

        <xsl:variable name="oaibase" select="//oai:request"/>
        <xsl:variable name="recordbase"><xsl:text>?verb=GetRecord&amp;metadataPrefix=oai_qdc&amp;identifier=</xsl:text></xsl:variable>
        <table>
            <tr>
                <th class="required">Title</th>
                <th class="required">Type</th>
                <th class="required">Format</th>
                <th class="required">Date</th>
                <th class="required">Description</th>
                <th class="required">Subject</th>
                <th class="required">Rights</th>
                <th class="required">Identifier</th>
                <th class="recommended">Creator</th>
                <th>Contributor</th>
                <th class="recommended">Spatial</th>
                <th>Temporal</th>
                <th>Publisher</th>
                <th>isPartOf</th>
                <th>Source</th>
                <th>Language</th>
            </tr>
            <tr>
                <td>
                    <xsl:for-each select="//dcterms:title">
                        <div class='value'><a target="_blank" href="{$oaibase}{$recordbase}{./ancestor::oai:record/oai:header/oai:identifier}"><xsl:value-of select="."/></a></div>
                    </xsl:for-each>
                </td>
                 <td>
                 <xsl:for-each select="//dcterms:type">
                        <div class='value'><a target="_blank" href="{$oaibase}{$recordbase}{./ancestor::oai:record/oai:header/oai:identifier}"><xsl:value-of select="."/></a></div>
                    </xsl:for-each>
                </td>
                <td>
                    <xsl:for-each select="//dcterms:format">
                        <div class='value'><a target="_blank" href="{$oaibase}{$recordbase}{./ancestor::oai:record/oai:header/oai:identifier}"><xsl:value-of select="."/></a></div>
                    </xsl:for-each>
                </td>
                <td>
                    <xsl:for-each select="//dcterms:date">
                        <div class='value'><a target="_blank" href="{$oaibase}{$recordbase}{./ancestor::oai:record/oai:header/oai:identifier}"><xsl:value-of select="."/></a></div>
                    </xsl:for-each>
                </td>
                <td>
                    <xsl:for-each select="//dcterms:description">
                        <div class='value'><a target="_blank" href="{$oaibase}{$recordbase}{./ancestor::oai:record/oai:header/oai:identifier}"><xsl:value-of select="."/></a></div>
                    </xsl:for-each>
                </td>
                <td>
                    <xsl:for-each select="//dcterms:subject">
                        <div class='value'><a target="_blank" href="{$oaibase}{$recordbase}{./ancestor::oai:record/oai:header/oai:identifier}"><xsl:value-of select="."/></a></div>
                    </xsl:for-each>
                </td>
                <td>
                    <xsl:for-each select="//dcterms:rights">
                        <div class='value'><a target="_blank" href="{$oaibase}{$recordbase}{./ancestor::oai:record/oai:header/oai:identifier}"><xsl:value-of select="."/></a></div>
                    </xsl:for-each>
                </td>
                <td>
                    <xsl:for-each select="//dcterms:identifier">
                        <div class='value'><a target="_blank" href="{$oaibase}{$recordbase}{./ancestor::oai:record/oai:header/oai:identifier}"><xsl:value-of select="."/></a></div>
                    </xsl:for-each>
                </td>
                <td>
                    <xsl:for-each select="//dcterms:creator">
                        <div class='value'><a target="_blank" href="{$oaibase}{$recordbase}{./ancestor::oai:record/oai:header/oai:identifier}"><xsl:value-of select="."/></a></div>
                    </xsl:for-each>
                </td>
                <td>
                    <xsl:for-each select="//dcterms:contributor">
                        <div class='value'><a target="_blank" href="{$oaibase}{$recordbase}{./ancestor::oai:record/oai:header/oai:identifier}"><xsl:value-of select="."/></a></div>
                    </xsl:for-each>
                </td>
                <td>
                    <xsl:for-each select="//dcterms:spatial">
                        <div class='value'><a target="_blank" href="{$oaibase}{$recordbase}{./ancestor::oai:record/oai:header/oai:identifier}"><xsl:value-of select="."/></a></div>
                    </xsl:for-each>
                </td>
                <td>
                    <xsl:for-each select="//dcterms:temporal">
                        <div class='value'><a target="_blank" href="{$oaibase}{$recordbase}{./ancestor::oai:record/oai:header/oai:identifier}"><xsl:value-of select="."/></a></div>
                    </xsl:for-each>
                </td>
                <td>
                    <xsl:for-each select="//dc:publisher">
                        <div class='value'><a target="_blank" href="{$oaibase}{$recordbase}{./ancestor::oai:record/oai:header/oai:identifier}"><xsl:value-of select="."/></a></div>
                    </xsl:for-each>
                </td>
                <td>
                    <xsl:for-each select="//dcterms:isPartOf">
                        <div class='value'><a target="_blank" href="{$oaibase}{$recordbase}{./ancestor::oai:record/oai:header/oai:identifier}"><xsl:value-of select="."/></a></div>
                    </xsl:for-each>
                </td>
                <td>
                    <xsl:for-each select="//dcterms:source">
                        <div class='value'><a target="_blank" href="{$oaibase}{$recordbase}{./ancestor::oai:record/oai:header/oai:identifier}"><xsl:value-of select="."/></a></div>
                    </xsl:for-each>
                </td>
                <td>
                    <xsl:for-each select="//dcterms:language">
                        <div class='value'><a target="_blank" href="{$oaibase}{$recordbase}{./ancestor::oai:record/oai:header/oai:identifier}"><xsl:value-of select="."/></a></div>
                    </xsl:for-each>
                </td>
            </tr>
        </table>
    </xsl:template>
</xsl:stylesheet>
