module easing

import math

const (
  PI    = 3.141592653589
  PI_2  = PI * 2.0
)

pub fn linear_interpolation(p f64) f64 {
  return p
}

pub fn quadratic_ease_in(p f64) f64 {
  return p * p
}

pub fn quadratic_ease_out(p f64) f64 {
  return -(p * (p - 2))
}

pub fn quadratic_ease_in_out(p f64) f64 {
  if(p < 0.5) {
    return 2.0 * p * p
  } else {
    return (-2.0 * p * p) + (4.0 * p) - 1
  }
}

pub fn cubic_ease_in(p f64) f64 {
  return p * p * p
}

pub fn cubic_ease_out(p f64) f64 {
  f := p - 1
  return f * f * f + 1
}

pub fn cubic_ease_in_out(p f64) f64 {
  if(p < 0.5) {
    return 4.0 * p * p * p
  } else {
    f := ((2.0 * p) - 2.0)
    return 0.5 * f * f * f + 1.0
  }
}

pub fn quartic_ease_in(p f64) f64 {
  return p * p * p * p
}

pub fn quartic_ease_out(p f64) f64 {
  f := (p - 1)
  return f * f * f * (1.0 - p) + 1.0
}

pub fn quartic_ease_in_out(p f64) f64 {
  if(p < 0.5) {
    return 8.0 * p * p * p * p
  } else {
    f := (p - 1)
    return -8.0 * f * f * f * f + 1
  }
}

pub fn quintic_ease_in(p f64) f64 {
  return p * p * p * p * p
}

pub fn quintic_ease_out(p f64) f64 {
  f := (p - 1)
  return f * f * f * f * f + 1
}

pub fn quintic_ease_in_out(p f64) f64 {
  if(p < 0.5) {
    return 16.0 * p * p * p * p * p
  } else {
    f := ((2.0 * p) - 2.0)
    return  0.5 * f * f * f * f * f + 1.0
  }
}

pub fn sine_ease_in(p f64) f64 {
  return math.sin((p - 1.0) * PI_2) + 1.0
}

pub fn sine_ease_out(p f64) f64 {
  return math.sin(p * PI_2)
}

pub fn sine_ease_in_out(p f64) f64 {
  return 0.5 * (1.0 - math.cos(p * PI))
}

pub fn circular_ease_in(p f64) f64 {
  return 1.0 - math.sqrt(1.0 - (p * p))
}

pub fn circular_ease_out(p f64) f64 {
  return math.sqrt((2.0 - p) * p)
}

pub fn circular_ease_in_out(p f64) f64 {
  if(p < 0.5) {
    return 0.5 * (1.0 - math.sqrt(1.0 - 4.0 * (p * p)))
  } else {
    return 0.5 * (math.sqrt(-((2.0 * p) - 3.0) * ((2.0 * p) - 1.0)) + 1.0)
  }
}

pub fn exponential_ease_in(p f64) f64 {
  return if p == 0.0 { p } else { math.pow(2, 10.0 * (p - 1.0)) }
}

pub fn exponential_ease_out(p f64) f64 {
  return if p == 1.0 { p } else { 1.0 - math.pow(2, -10.0 * p ) }
}

pub fn exponential_ease_in_out(p f64) f64 {
  if (p == 0.0 || p == 1.0) {
    return p
  }

  if(p < 0.5) {
    return 0.5 * math.pow(2, (20.0 * p) - 10.0)
  } else {
    return -0.5 * math.pow(2, (-20.0 * p) + 10.0) + 1
  }
}

pub fn elastic_ease_in(p f64) f64 {
  return math.sin(13.0 * PI_2 * p) * math.pow(2, 10.0 * (p - 1.0))
}

pub fn elastic_ease_out(p f64) f64 {
  return math.sin(-13.0 * PI_2 * (p + 1.0)) * math.pow(2, -10.0 * p) + 1.0
}

pub fn elastic_ease_in_out(p f64) f64 {
  if(p < 0.5) {
    return 0.5 * math.sin(13.0 * PI_2 * (2.0 * p)) * math.pow(2, 10.0 * ((2.0 * p) - 1.0))
  } else {
    return 0.5 * (math.sin(-13.0 * PI_2 * ((2.0 * p - 1.0) + 1.0)) * math.pow(2, -10.0 * (2.0 * p - 1.0)) + 2.0)
  }
}

pub fn back_ease_in(p f64) f64 {
  return p * p * p - p * math.sin(p * PI)
}

pub fn back_ease_out(p f64) f64 {
  f := (1.0 - p)
  return 1.0 - (f * f * f - f * math.sin(f * PI))
}

pub fn back_ease_in_out(p f64) f64 {
  if(p < 0.5) {
    f := 2.0 * p
    return 0.5 * (f * f * f - f * math.sin(f * PI))
  } else {
    f := (1.0 - (2.0 * p - 1.0 ))
    return 0.5 * (1.0 - (f * f * f - f * math.sin(f * PI))) + 0.5
  }
}

pub fn bounce_ease_in(p f64) f64 {
  return 1.0 - bounce_ease_out(1.0 - p)
}

pub fn bounce_ease_out(p f64) f64 {
  if(p < 4/11.0) {
    return (121.0 * p * p)/16.0
  } else if(p < 8.0 / 11.0) {
    return (363.0 / 40.0 * p * p) - (99.0 / 10.0 * p) + 17.0 / 5.0
  } else if(p < 9.0 / 10.0) {
    return (4356.0 / 361.0 * p * p) - (35442.0 / 1805.0 * p) + 16061.0 / 1805.0
  } else {
    return (54.0 / 5.0 * p * p) - (513.0 / 25.0 * p) + 268.0 / 25.0
  }
}

pub fn bounce_ease_in_out(p f64) f64 {
  if(p < 0.5) {
    return 0.5 * bounce_ease_in(p * 2.0)
  } else {
    return 0.5 * bounce_ease_out(p * 2.0 - 1.0) + 0.5
  }
}
