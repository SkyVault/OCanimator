type rect = { size : int * int }
type circle = { radius : float }

type visual =
    | Rect of rect
    | Circle of circle

type id = int

type t =
    { v : visual
    ; position : float * float }

let makeRect ~(w: int) ~(h: int): rect = { size = (w, h) }
