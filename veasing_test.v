import veasing

//
// Linear tests

fn test_linear_interpolation() {
  assert veasing.linear_interpolation(2) == 2 
}

//
// Quadratic tests

fn test_quadratic_ease_in() {
  assert veasing.quadratic_ease_in(2) == 4  
}

fn test_quadratic_ease_out() {
  assert veasing.quadratic_ease_out(5) == -15 
}

fn test_quadratic_ease_in_out_under_0_5() {
  assert veasing.quadratic_ease_in_out(0.4) == 0.32   
}

fn test_quadratic_ease_in_out_over_0_5() {
  assert veasing.quadratic_ease_in_out(0.6) == 0.68 
}

//
// Cubic tests
