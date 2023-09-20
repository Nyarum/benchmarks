open Cohttp_eio

let app : Server.request -> Server.response =
 fun ((req, _, _) : Server.request) ->
  match Http.Request.resource req with
  | "/" -> Server.text_response "hello"
  | _ -> Server.not_found_response

let () =
  let port = ref 8080 in
  Arg.parse
    [ ("-p", Arg.Set_int port, " Listening port number(8080 by default)") ]
    ignore "An HTTP/1.1 server";

  Eio_main.run @@ fun env -> Server.run ~port:!port env app


