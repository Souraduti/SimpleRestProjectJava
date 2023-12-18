package com.souraduti.NewRestAPI;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;

@Path("home")
public class MyResource {
    // example URL http://localhost:8080/NewRestAPI/webapi/home/add?op1=2&op2=4
    @Path("add")
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public String addMethod(@QueryParam("op1") int a,@QueryParam("op2") int b){
        String str ;
        int res = a+b;
        str  = "Sum : "+res;
        return str;
    }

    // example URL http://localhost:8080/NewRestAPI/webapi/home/sub?op1=4&op2=6
    @Path("sub")
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public String subMethod(@QueryParam("op1") int a,@QueryParam("op2") int b){
        String str ;
        int res = a-b;
        str  ="Difference  : "+res;
        return str;
    }
}
