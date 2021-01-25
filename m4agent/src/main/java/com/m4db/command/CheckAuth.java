/*  
**  M4DB ( Manager Monitor Multiple Machine & DataBase )
**  Copyright (C) 2010-2020 M4DB
**/ 

package com.m4db.command;

import java.util.ArrayList;

/**
 *
* @author penghwa penghwa@msn.com
 */
public class CheckAuth {
    public static boolean isRegistryClient(String client, ArrayList<String> clients) {
        if ( clients == null || clients.size() == 0 )
            return false;
        if ( "127.0.0.1".equals(client) )
            return true;
        return clients.contains(client);
    }
}
