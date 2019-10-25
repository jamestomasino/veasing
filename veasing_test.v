import veasing

import math

//
// Linear tests

fn test_linear_interpolation() {
  assert compare(veasing.linear_interpolation(2), 2) 
}

//
// Quadratic tests

fn test_quadratic_ease_in() {
  assert compare(veasing.quadratic_ease_in(2), 4)  
}

fn test_quadratic_ease_out() {
  assert compare(veasing.quadratic_ease_out(5), -15) 
}

fn test_quadratic_ease_in_out_under_0_5() {
  assert compare(veasing.quadratic_ease_in_out(0.4), 0.32)   
}

fn test_quadratic_ease_in_out_over_0_5() {
  assert compare(veasing.quadratic_ease_in_out(0.6),  0.68)
}

//
// Cubic tests

fn test_cubic_ease_in() {
  assert compare(veasing.cubic_ease_in(3),  27)  
}

fn test_cubic_ease_out() {
  assert compare(veasing.cubic_ease_out(4), 28)  
}

fn test_cubic_ease_in_out_under_0_5() {
  assert compare(veasing.cubic_ease_in_out(0.4),  0.256) 
}

fn test_cubic_ease_in_out_over_0_5() {
  assert compare(veasing.cubic_ease_in_out(0.6),  0.744)
}

//
// Quadratic tests

fn test_quartic_ease_in() {
  assert compare(veasing.quartic_ease_in(3), 81)  
}

fn test_quartic_ease_out() {
  assert compare(veasing.quartic_ease_out(3), -15)
}

fn test_quartic_ease_in_out_under_0_5() {
  assert compare(veasing.quartic_ease_in_out(0.4), 0.2048) 
}

fn test_quartic_ease_in_out_over_0_5() {
  assert compare(veasing.quartic_ease_in_out(0.6), 0.7952) 
}

//
// Quintic tests

fn test_quintic_ease_in() {
  assert compare(veasing.quintic_ease_in(4), 1024)  
}

fn test_quintic_ease_out() {
  assert compare(veasing.quintic_ease_out(4), 244)  
}

fn test_quintic_ease_in_out_under_0_5() {
  assert compare(veasing.quintic_ease_in_out(0.4), 0.16384)  
}

fn test_quintic_ease_in_out_over_0_5() { 
  assert compare(veasing.quintic_ease_in_out(0.6), 0.83616)
}

//
// Sine tests

fn test_sine_ease_in() {
  assert compare(veasing.sine_ease_in(3), 1.00)    
}

fn test_sine_ease_out() {
  // FIXME
  assert compare(veasing.sine_ease_out(3), 0.000000) 
}

fn test_sine_ease_in_out() {
  assert compare(veasing.sine_ease_in_out(3), 1.00) 
}

//
// Circular tests

fn test_circular_ease_in() {
  assert compare(veasing.circular_ease_in(0.4), 0.083485) 
}

fn test_circular_ease_out() {
  assert compare(veasing.circular_ease_out(0.4), 0.80) 
}

fn test_circular_ease_in_out_under_0_5() {
  assert compare(veasing.circular_ease_in_out(0.4), 0.20) 
}

fn test_circular_ease_in_out_over_0_5() {
  assert compare(veasing.circular_ease_in_out(0.6), 0.80) 
}

//
// Exponential tests
fn test_exponential_ease_in() {
  assert compare(veasing.exponential_ease_in(2), 1024)
}

fn test_exponential_ease_out() {
  assert compare(veasing.exponential_ease_out(2), 0.999999) 
}

fn test_exponential_ease_in_out_for_0() {
  assert compare(veasing.exponential_ease_in_out(0), 0) 
}

fn test_exponential_ease_in_out_for_1() {
  assert compare(veasing.exponential_ease_in_out(1), 1) 
}

fn test_exponential_ease_in_out_under_0_5() {
  assert compare(veasing.exponential_ease_in_out(0.4), 0.125000) 
}

fn test_exponential_ease_in_out_over_0_5() {
  assert compare(veasing.exponential_ease_in_out(0.6), 0.875000) 
}

// Helper method for comparing floats
fn compare(x f64, y f64) bool {
  tolerance := 0.00001
  diff := math.abs(x - y)
  mean := math.abs(x + y) / 2.0
  if math.is_nan(diff / mean) {
    return true
  }
  return (diff / mean) < tolerance
}

