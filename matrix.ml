
module type Sig = sig
  type num
  type mat
  type slice = { first : int; increment : int; last : int; }

  (*Making matrices*)
  val make : int*int -> (int->int->num) -> mat
  val copy : mat -> mat

  (*Destructive update*)
  val set : mat -> mat -> unit



  (*Basic matrix properties*)
  val size : mat -> int*int


  (*Basic matrix indexing*)
  val idget : mat -> int -> int -> num
  val idset : mat -> int -> int -> num -> unit
  (*Slice indexing*)
  val sliceget : mat -> slice -> mat



  (*Add two matrices*)
  val add : mat -> mat -> mat  
  (*Matrix multiplication*)
  val mul : mat -> mat -> mat
  (*Scalar multiplication*)
  val smul : num -> mat -> mat
end;;


module DSL (M:Sig) = struct
end;;
