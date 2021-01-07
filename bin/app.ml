open Ocanimator
open Anim

let setup () =
  Raylib.init_window 640 480 "Animation";
  Raylib.set_target_fps 60

let rec loop () =
  match Raylib.window_should_close () with
  | true -> Raylib.close_window ()
  | false ->
    Raylib.begin_drawing ();
    Raylib.clear_background Raylib.Color.black;
    Raylib.end_drawing ();
    loop ()

let () =
  let anim = { shapes = []; steps = [] } in
  Printf.printf "%d\n" (List.length anim.steps);
  setup () |> loop
