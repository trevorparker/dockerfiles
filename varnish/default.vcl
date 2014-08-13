backend default {
  .host = "127.0.0.1";
  .port = "80";
}

sub vcl_fetch {
  set beresp.ttl = 1h;
}

sub vcl_recv {
  set req.http.Host = "www.trevorparker.com";
  if (req.http.X-Forwarded-Proto !~ "(?i)https") {
    set req.http.x-Redir-Url = "https://www.trevorparker.com" + req.url;
    error 750 req.http.x-Redir-Url;
  }
}

sub vcl_error {
  if (obj.status == 750) {
    set obj.http.Location = obj.response;
    set obj.status = 301;
    return(deliver);
  }
}

