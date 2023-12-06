<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns="http://www.w3.org/1999/xhtml">
<xsl:output method="html" encoding="UTF-8" indent="yes" />
 <xsl:template match="/">
  <html lang="it">
    <head>
        <title><xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title"/></title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="stylesheet" href="stile.css" />
    </head>
    <body>
      <section id="nav_bar">
        <ul>
         <li  class="font_2"><a class="active" href="#intro">Il progetto</a></li>
         <li class="font_2"><a href="#page_49">Pagina 49</a></li>
         <li  class="font_2"><a href="#page_50">Pagina 50</a></li>
         <li  class="font_2"><a href="#page_51">Pagina 51</a></li>
        </ul>
      </section>
      <h1 class="font_2"><xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title"/></h1>
      <div id='intro'>
        <img id="E_Artom" src="img/Emanuele_Artom.jpg"/>
        <p><span class="bold">Emanuele Artom</span> è stato un partigiano italiano di origine ebraica, combattente durante la Resistenza e morto il 7 aprile 1944 in seguito alla cattura e alle torture inflittegli dai Tedeschi.<br/>
         Il diario di Artom è stato conservato dalla madre Amalia Segre e diffuso a partire dal secondo dopoguerra in quanto importante testimonianza dell'Ebraismo e della Resistenza in Italia.<br/>
         <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:history"/><br/>
         Questo sito riporta una versione digitale di tre pagine della seconda parte del diario di Artom, scritte nei mesi di poco precedenti alla sua cattura.<br/><br/>
         <span id="note"><xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:notesStmt"/></span><br/>
         <hr/><br/>
         È possibile ricollegarsi alla singola riga della trascrizione del testo passando con il mouse sull'immagine nel punto corrispondente,<br/>e leggere il testo facendo riferimento alla <span class="bold">legenda</span> nella parte in basso della pagina.
         <br/>
        </p>
        <br/>
        <div id='legenda'>
          <ul>
           <li class="red">Cancellature</li>
           <li class="green">Aggiunte dall'autore</li>
           <li  class="yellow">Correzioni</li>
           <li  class="blue">Passi poco chiari</li>
           <li  class="purple">Aggiunte dal curatore</li>
          </ul>
        </div>
      </div>
      <section id="page_49">
       <h3>Pagina 49</h3>
        <div class="foto_pagine">
        <xsl:element name="img">
         <xsl:attribute name="src">
          <xsl:value-of select="//tei:surface[@xml:id='page_49']/tei:graphic/@url" />
         </xsl:attribute>
         <xsl:attribute name="id">foto_1</xsl:attribute>
         <xsl:attribute name="usemap"><xsl:value-of>#page_49</xsl:value-of></xsl:attribute>
       </xsl:element>
       <xsl:element name="map">
           <xsl:attribute name="name"><xsl:value-of>page_49</xsl:value-of></xsl:attribute>
           <xsl:for-each select="//tei:surface[@xml:id='page_49']/tei:zone">
               <xsl:element name="area">
                   <xsl:attribute name="onmouseover">selezione_riga(this, "on")</xsl:attribute>
                   <xsl:attribute name="onmouseout">selezione_riga(this, "off")</xsl:attribute>
                   <xsl:attribute name="id"><xsl:value-of select="@xml:id"/></xsl:attribute>
                   <xsl:attribute name="coords"><xsl:value-of select="@ulx"/>,<xsl:value-of select="@uly"/>,<xsl:value-of select="@lrx"/>,<xsl:value-of select="@lry"/></xsl:attribute>
                   <xsl:attribute name="href">#<xsl:value-of select="@xml:id"/></xsl:attribute>
               </xsl:element>
           </xsl:for-each>
       </xsl:element>
     </div>
       <div class="testo_pagine">
       <div class="trascr_pagine">
       <h4>Trascrizione</h4>
       <xsl:apply-templates select="//tei:div[@n='1']" />
       </div>
       <br/>
       <h4>Testo</h4>
       <xsl:apply-templates select="//tei:div[@n='full_49']" />
       </div>
      </section>
      <section id="page_50">
        <h3>Pagina 50</h3>
        <div class="foto_pagine">
        <xsl:element name="img">
         <xsl:attribute name="src">
          <xsl:value-of select="//tei:surface[@xml:id='page_50']/tei:graphic/@url" />
         </xsl:attribute>
         <xsl:attribute name="id">foto_2</xsl:attribute>
         <xsl:attribute name="usemap"><xsl:value-of>#page_50</xsl:value-of></xsl:attribute>
       </xsl:element>
       <xsl:element name="map">
           <xsl:attribute name="name"><xsl:value-of>page_50</xsl:value-of></xsl:attribute>
           <xsl:for-each select="//tei:surface[@xml:id='page_50']/tei:zone">
               <xsl:element name="area">
                   <xsl:attribute name="onmouseover">selezione_riga(this, "on")</xsl:attribute>
                   <xsl:attribute name="onmouseout">selezione_riga(this, "off")</xsl:attribute>
                   <xsl:attribute name="id"><xsl:value-of select="@xml:id"/></xsl:attribute>
                   <xsl:attribute name="coords"><xsl:value-of select="@ulx"/>,<xsl:value-of select="@uly"/>,<xsl:value-of select="@lrx"/>,<xsl:value-of select="@lry"/></xsl:attribute>
                   <xsl:attribute name="href">#<xsl:value-of select="@xml:id"/></xsl:attribute>
               </xsl:element>
           </xsl:for-each>
       </xsl:element>
     </div>
       <div class="testo_pagine">
       <div class="trascr_pagine">
       <h4>Trascrizione</h4>
       <xsl:apply-templates select="//tei:div[@n='2']" />
       </div>
       <br/>
       <h4>Testo</h4>
       <xsl:apply-templates select="//tei:div[@n='full_50']" />
       </div>
      </section>
      <section id="page_51">
        <h3>Pagina 51</h3>
        <div class="foto_pagine">
        <xsl:element name="img">
         <xsl:attribute name="src">
          <xsl:value-of select="//tei:surface[@xml:id='page_51']/tei:graphic/@url" />
         </xsl:attribute>
         <xsl:attribute name="id">foto_3</xsl:attribute>
         <xsl:attribute name="usemap"><xsl:value-of>#page_51</xsl:value-of></xsl:attribute>
       </xsl:element>
       <xsl:element name="map">
           <xsl:attribute name="name"><xsl:value-of>page_51</xsl:value-of></xsl:attribute>
           <xsl:for-each select="//tei:surface[@xml:id='page_51']/tei:zone">
               <xsl:element name="area">
                   <xsl:attribute name="onmouseover">selezione_riga(this, "on")</xsl:attribute>
                   <xsl:attribute name="onmouseout">selezione_riga(this, "off")</xsl:attribute>
                   <xsl:attribute name="id"><xsl:value-of select="@xml:id"/></xsl:attribute>
                   <xsl:attribute name="coords"><xsl:value-of select="@ulx"/>,<xsl:value-of select="@uly"/>,<xsl:value-of select="@lrx"/>,<xsl:value-of select="@lry"/></xsl:attribute>
                   <xsl:attribute name="href">#<xsl:value-of select="@xml:id"/></xsl:attribute>
               </xsl:element>
           </xsl:for-each>
       </xsl:element>
     </div>
       <div class="testo_pagine">
       <div class="trascr_pagine">
       <h4>Trascrizione</h4>
       <xsl:apply-templates select="//tei:div[@n='3']" />
       </div>
       <br/>
       <h4>Testo</h4>
       <xsl:apply-templates select="//tei:div[@n='full_51']" />
       </div>
     </section>
    </body>
   <script src="code.js"></script>
  </html>
 </xsl:template>

<xsl:template match="tei:del">
    <xsl:element name="span">
        <xsl:attribute name="class">delet</xsl:attribute>
        <xsl:apply-templates/>
    </xsl:element>
</xsl:template>

<xsl:template match="tei:add">
    <xsl:element name="span">
        <xsl:attribute name="class">add</xsl:attribute>
        <xsl:apply-templates/>
    </xsl:element>
</xsl:template>

<xsl:template match="tei:choice/tei:sic">
    <xsl:element name="span">
        <xsl:attribute name="class">correzioni</xsl:attribute>
        <xsl:apply-templates/>
    </xsl:element>
</xsl:template>

<xsl:template match="tei:unclear">
    <xsl:element name="span">
        <xsl:attribute name="class">unclear</xsl:attribute>
        <xsl:apply-templates/>
    </xsl:element>
</xsl:template>

 <xsl:template match="tei:supplied">
    <xsl:element name="span">
        <xsl:attribute name="class">supplied</xsl:attribute>
        <xsl:apply-templates/>
    </xsl:element>
  </xsl:template>


      <xsl:template match="tei:lb">
          <xsl:element name="br"/>
          <xsl:element name="span">
              <xsl:attribute name="id">
                  <xsl:value-of select="@facs"/>
              </xsl:attribute>
              <xsl:attribute name="class"></xsl:attribute>
                 <xsl:value-of select="@n"/>&#160;
          </xsl:element>
      </xsl:template>

</xsl:stylesheet>
