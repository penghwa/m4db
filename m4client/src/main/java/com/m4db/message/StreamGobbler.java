/*  
**  M4DB ( Manager Monitor Multiple Machine & DataBase )
**  Copyright (C) 2010-2020 M4DB
**/ 

package com.m4db.message;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
* @author penghwa penghwa@msn.com
 */
public class StreamGobbler extends Thread {

    InputStream in;
    private StringBuilder sb;
    public StreamGobbler(InputStream in) {
        this.in = in;
        sb = new StringBuilder();
    }

    public String getOutput() {
        return sb.toString();
    }
    
    @Override
    public void run() {
        try {
            InputStreamReader isr = new InputStreamReader(in, "GBK");
            BufferedReader br = new BufferedReader(isr);
            String line = null;
            while ((line = br.readLine()) != null) {
                 sb.append(line).append("\n");
            }
            isr.close();
            br.close();
        } catch (Exception e) {
           e.printStackTrace();
        }
        finally {
            try {
                in.close();
            } catch (IOException ex) {
                Logger.getLogger(StreamGobbler.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }
}
