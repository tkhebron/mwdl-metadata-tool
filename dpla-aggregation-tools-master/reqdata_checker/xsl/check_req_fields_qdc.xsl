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

        <xsl:for-each select="//oai:record">
            <xsl:if test="./oai:header[not(@status)]">
                <xsl:variable name="title" select="normalize-space(.//dc:title[1])"/>
                <xsl:variable name="description" select="normalize-space(.//dc:description[1])"/>
                <xsl:variable name="abstract" select="normalize-space(.//dcterms:abstract[1])"/>
                <xsl:variable name="subject" select="normalize-space(.//dc:subject[1])"/>
                <xsl:variable name="date" select="normalize-space(.//dc:date[1])"/>
                <xsl:variable name="type" select="normalize-space(.//dc:type[1])"/>
                <xsl:variable name="format" select="normalize-space(.//dc:format[1])"/>
                <xsl:variable name="rights" select="normalize-space(.//dc:rights[1])"/>

                <xsl:variable name="creator" select="normalize-space(.//dc:creator[1])"/>
                <xsl:variable name="spatial" select="normalize-space(.//dcterms:spatial[1])"/>

                <xsl:variable name="id" select="./oai:header/oai:identifier"/>

                <xsl:if test="not($title) or not($description) or not($subject) or not($date) or not($type) or not($format) or not($rights) or not($creator) or not($spatial)">
                    <tr>
                        <td><a target="_blank" href="{$oaibase}{$recordbase}{$id}"><xsl:value-of select="$id"/></a></td>
                        <td>
                            <xsl:if test="not($title)">
                                <p>Title</p>
                            </xsl:if>
                            <xsl:if test="(not($description)) and (not($abstract))">
                                <p>Description</p>
                            </xsl:if>
                            <xsl:if test="not($subject)">
                                <p>Subject</p>
                            </xsl:if>
                            <xsl:if test="not($date)">
                                <p>Date</p>
                            </xsl:if>
                            <xsl:if test="not($type)">
                                <p>Type</p>
                            </xsl:if>
                            <xsl:if test="not($format)">
                                <p>Format</p>
                            </xsl:if>
                            <xsl:if test="not($rights)">
                                <p>Rights </p>
                            </xsl:if>
                        </td>
                        <td>
                            <xsl:if test="not($creator)">
                                <p>Creator</p>
                            </xsl:if>
                            <xsl:if test="not($spatial)">
                                <p>Spatial</p>
                            </xsl:if>
                        </td>
                    </tr>
                </xsl:if>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
