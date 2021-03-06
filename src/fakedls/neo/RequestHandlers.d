/******************************************************************************

    Table of request handlers by command.

    Copyright:
        Copyright (c) 2016-2017 sociomantic labs GmbH. All rights reserved.

    License:
        Boost Software License Version 1.0. See LICENSE.txt for details.

*******************************************************************************/

module fakedls.neo.RequestHandlers;

import swarm.neo.node.ConnectionHandler;

import dlsproto.common.RequestCodes;

import Put = fakedls.neo.request.Put;
import GetRange = fakedls.neo.request.GetRange;


/******************************************************************************

    This table of request handlers by command is used by the connection
    handler.  When creating a new request, the function corresponding to the
    request command is called in a fiber.

******************************************************************************/

public ConnectionHandler.CmdHandlers request_handlers;

static this ( )
{
    request_handlers[RequestCode.Put] = &Put.handle;
    request_handlers[RequestCode.GetRange] = &GetRange.handle;
}
