<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0" >
	<xsl:output method="html" indent="yes" />
  	<xsl:template match="/">
   		<html>
   			<head></head>
   			<body>
   				<xsl:apply-templates />
   			</body>
   		</html>
   	</xsl:template>

   	<xsl:template match="fileDesc">
   		<h1>Titolo</h1>
   		<h2>
   			<xsl:value-of select="titleStmt/title" />
   		</h2>
    </xsl:template>

   	<xsl:template match="front">
   	    <h1>informazioni<h1>
   		<h2>
   			<xsl:value-of select="titlePage/docAuthor" />
   		</h2>
   		<h2>
   			<xsl:value-of select="docTitle/titlePart" />
   		</h2>
   		<h2>
   			<xsl:value-of select="docImprint/pubPlace" />
   		</h2>
   		<h2>
   			<xsl:value-of select="docImprint/publisher" />
   		</h2>
   		<h2>
   			<xsl:value-of select="docImprint/date" />
   		</h2>
    </xsl:template>

   	<xsl:template match="body">
   		<h1>contenuto paragrafi:</h1>
   		<h2>
   			<xsl:value-of select="div/p" />
   		</h2>
    </xsl:template>

</xsl:stylesheet>