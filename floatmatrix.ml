

module FloatMatrix : Matrix.Sig = struct
  type num = float
  type mat = {nrows : int; ncols : int; dat : float array;}
  type slice = { first : int; increment : int; last : int; }
  let make (m,n) f = {nrows=m;ncols=n;dat=Array.of_list [];}
  let copy a = {nrows=a.nrows;ncols=a.ncols;dat=Array.copy a.dat}
  let set a b = ()
  let size a = (a.nrows,a.ncols)
  let idget a m n = 0.0
  let idset a m n v = ()
  let sliceget a s = a
  let add a b = a
  let mul a b = a
  let smul c a = a


end;;
