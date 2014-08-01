-------------------------------------------------------------------------------
-- Xavante configuration file.
--
--
-- Authors: Javier Guerra and Andre Carregal
-- Copyright (c) 2004-2007 Kepler Project
---
-- $Id: config.lua,v 1.1 2007/10/31 17:50:13 carregal Exp $
------------------------------------------------------------------------------

local sparrow = require "sparrow.httpd"
local copas = require "sparrow.copas"

local hvhost = require "sparrow.vhostshandler"
local hurl = require "sparrow.urlhandler"
local hindex = require "sparrow.indexhandler"
local hfile = require "sparrow.filehandler"


local SPARROW_WEB = "./htdocs"
sparrow.handle_request = hvhost {
	[""] = hurl {
		["/"] = hindex (SPARROW_WEB),
		["/img/"] = hfile (SPARROW_WEB),
	}
}

sparrow.register ("*", 8080, "sparrow 1.0")

copas.loop()
