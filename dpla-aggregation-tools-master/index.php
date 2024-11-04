<html>
    <head>
        <title>DPLA OAI Aggregation Tools</title>
        <link rel="stylesheet" type="text/css" href="style.css"/>
    </head>
</html>

<div id="container">
    <h1>DPLA OAI Aggregation Tools</h1>
    <p>Checking OAI-PMH metadata provision from digital collections sets<br />
Adapted for use by Mountain West Digital Library partners</p>
    <ul>
        <li>
            <a href="mapping_checker/index_oai_dc.php"><h2>Mapping Checker - Simple Dublin Core</h2>
            <p>Check simple Dublin Core mappings<br />
using "oai_dc" metadata format.</p></a>
        </li>
        <li>
            <a href="mapping_checker/index_oai_qdc.php"><h2>Mapping Checker - Qualified Dublin Core (CONTENTdm)</h2>
            <p>Check qualified Dublin Core mappings<br />
using "oai_qdc" metadata format from CONTENTdm.</p></a>
        </li>
        <li>
            <a href="mapping_checker/index_oai_qdc_ore.php"><h2>Mapping Checker - Qualified Dublin Core (Oregon-Samvera)</h2>
            <p>Check qualified Dublin Core mappings<br />
using "oai_qdc" metadata format from Oregon Digital.</p></a>
        </li>
       <li>
            <a href="reqdata_checker/index_oai_dc.php"><h2>Required Data Checker - Simple Dublin Core</h2>
            <p>Check required fields for Mountain West Digital Library conformance<br />
using "oai_dc" metadata format from CONTENTdm, Solphal, and Islandora systems.</p></a>
        </li>
        <li>
            <a href="reqdata_checker/index_oai_qdc.php"><h2>Required Data Checker - Qualified Dublin Core (CONTENTdm)</h2>
            <p>Check required fields for Mountain West Digital Library conformance<br />
using "oai_qdc" metadata format from CONTENTdm.</p></a>
        </li>
        <li>
            <a href="reqdata_checker/index_oai_qdc_ore.php"><h2>Required Data Checker - Qualified Dublin Core (Oregon-Samvera)</h2>
            <p>Check required fields for Mountain West Digital Library conformance<br />
using "oai_qdc" metadata format from Oregon Digital.</p></a>
        </li>
        <li>
            <a href="facet_viewer/index.php"><h2>DC Facet Viewer</h2>
            <p>See the contents of Dublin Core fields in an incoming OAI feed according to frequency. For use with all systems.</p></a>
        </li>
    </ul>
    <?php include('inc/byline.php');?>
</div>
