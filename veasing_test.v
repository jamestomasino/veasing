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

fn test_cubic_ease_in() {
  assert veasing.cubic_ease_in(3) == 27  
}

fn test_cubic_ease_out() {
  assert veasing.cubic_ease_out(4) == 28  
}

fn test_cubic_ease_in_out_under_0_5() {
  assert veasing.cubic_ease_in_out(0.4) == 0.256 
}

fn test_cubic_ease_in_out_over_0_5() {
  // FIXME
  assert veasing.cubic_ease_in_out(0.6) == 0.744
}

//
// Quadratic tests
fn test_quartic_ease_in() {
  assert veasing.quartic_ease_in(3) == 81  
}

fn test_quartic_ease_out() {
  // FIXME
  assert veasing.quartic_ease_out(3) == -80
}

fn test_quartic_ease_in_out_under_0_5() {
  assert veasing.quartic_ease_in_out(0.4) == 0.2048 
}

fn test_quartic_ease_in_out_over_0_5() {
  assert veasing.quartic_ease_in_out(0.6) == 0.7952 
}

fn test_quintic_ease_in() {
  assert veasing.quintic_ease_in(4) == 1024  
}

fn test_quintic_ease_out() {
  assert veasing.quintic_ease_out(4) == 244  
}

fn test_quintic_ease_in_out_under_0_5() {
  assert veasing.quintic_ease_in_out(0.4) == 0.16384  
}

fn test_quintic_ease_in_out_over_0_5() { 
  // FIXME
  assert veasing.quintic_ease_in_out(0.6) == 0.83616
}

