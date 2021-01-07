type vec2 = float * float
type duration = float

type action =
    | Move of vec2
    | Scale of vec2
    | Rotate of float
    | Times of int * step list
    | Group of step list
    | Loop

and step =
    { action : action
    ; duration : float
    ; ids : string list }

and t =
    { shapes : (Shapes.id * Shapes.t) list
    ; steps : step list }
