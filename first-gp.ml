type var = string
	     
type exp =
  | Plus of exp * exp
  | Minus of exp * exp
  | Times of exp * exp
  | Div of exp * exp
  | Int of int
  | Var of var

let term_set = [Int 2; Int 5; Var "x"; Var "y"]
let func_set = ["Plus"; "Minus"; "Times"; "Div"]
		 
let rec gen_rnd_expr func_set term_set max_d methd = match max_d with
  | 0 -> let expr = choose_random_element(term_set) in expr
  | x -> let func = choose_random_element(func_set) in
	 match func with
	 | "Plus" -> Plus(gen_rnd_expr(func_set, term_set,(x-1),methd),gen_rnd_expr(func_set,term_set,(x-1),methd))
	 | "Minus"-> Minus(gen_rnd_expr(func_set, term_set,(x-1),methd),gen_rnd_expr(func_set,term_set,(x-1),methd))
	 | "Times"-> Times(gen_rnd_expr(func_set, term_set,(x-1),methd),gen_rnd_expr(func_set,term_set,(x-1),methd))
	 | "Div"  -> Div(gen_rnd_expr(func_set, term_set,(x-1),methd),gen_rnd_expr(func_set,term_set,(x-1),methd))
							   
	 
		  
				 
					   
	 
	 
							    
	   
			  
