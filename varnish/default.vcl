backend default {
  .host = "127.0.0.1";
  .port = "4001";
}

sub vcl_recv {
  set req.http.Host = "www.trevorparker.com";
}

