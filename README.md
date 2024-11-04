MWDL OAI Metadata Audit Tool
==========================

These tools are intended for use by Mountain West Digital Library _Members_ and _Partners_ tasked with aggregating metadata into a master OAI feed for harvest by the MWDL (mwdl.org).

These tools help staff evaluate incoming **Dublin Core** feeds in three ways:
  - Displaying data that is mapped to each of the required MWDL Dublin Core fields [DC MAPPING CHECKER]
  - Displaying the frequency of terms in each simple Dublin Core fields [DC FACET VIEWER]
  - Displaying records that are missing MWDL "required" fields [REQUIRED DATA CHECKER]

Versions and version history
-------
 - 1.0 DPLA OAI Aggregation Tools 1.0 (May 2014) developed by North Carolina Digital Heritage Center
 - 2.0 MWDL Metadata Audit Tool (December 2015) adapted by Mountain West Digital Library to audit Simple & Qualified DC metadata against MWDL Metadata Application Profile 
 - 3.0 MWDL Metadata Audit Tool (March 2018), further adapted by Mountain West Digital Library to audit metadata coming from Samvera DAMS, added DC Facet Viewer

Technology
----------

DPLA OAI Aggregation Tools require the following to work properly:
  - PHP 5 or higher
  - libxml extension (enabled in PHP 5 by default)
  - php_curl extension
  - php_xsl extension

Installation
------------

Unzip files into a web-accessible directory or local evironment. Visit:

```sh
http://[path_to_your_directory]/index.php
```

License
-------

DPLA OAI AGGREGATION TOOLS 1.0

Copyright (C) 2014 North Carolina Digital Heritage Center <http://www.digitalnc.org/about>.

This program is free software: you can redistribute it and/or modify
it under the terms of the **GNU General Public License** as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses>.

Attribution
-----------

**jQuery** <https://jquery.com>

**jQuery TableSorter** <http://tablesorter.com/docs/>
