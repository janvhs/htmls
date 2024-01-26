let usage_message = "htmls <file1> [<file2>] ..."
let count = ref 0
let process_arg _ = count := !count + 1

let () =
  Arg.parse [] process_arg usage_message;
  if !count < 1
  then Arg.usage [] usage_message
  else Printf.printf "htmls received %d arguments" !count;
  ()
;;
