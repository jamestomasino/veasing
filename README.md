# veasing

This is a pure V module that provides easing function calculations.

## Install

```shell
v install jamestomasino.veasing
```
## Usage

In your v source:

```v
import jamestomasino.veasing as veasing

```

Use the `animate` function to apply an easing function over a range of numbers
```v
fn main () {
  println(veasing.animate(veasing.bounce_ease_out, 0, 100, 100))
  //      easing function ^
  //                                  lower bounds ^
  //                                     upper bounds ^
  //               number of frames/length of return array ^
}
```

The following easing methods are available:

```v
veasing.linear_interpolation(p f64) f64

veasing.quadratic_ease_in(p f64) f64
veasing.quadratic_ease_out(p f64) f64
veasing.quadratic_ease_in_out(p f64) f64

veasing.cubic_ease_in(p f64) f64
veasing.cubic_ease_out(p f64) f64
veasing.cubic_ease_in_out(p f64) f64

veasing.quartic_ease_in(p f64) f64
veasing.quartic_ease_out(p f64) f64
veasing.quartic_ease_in_out(p f64) f64

veasing.quintic_ease_in(p f64) f64
veasing.quintic_ease_out(p f64) f64
veasing.quintic_ease_in_out(p f64) f64

veasing.sine_ease_in(p f64) f64
veasing.sine_ease_out(p f64) f64
veasing.sine_ease_in_out(p f64) f64

veasing.circular_ease_in(p f64) f64
veasing.circular_ease_out(p f64) f64
veasing.circular_ease_in_out(p f64) f64

veasing.exponential_ease_in(p f64) f64
veasing.exponential_ease_out(p f64) f64
veasing.exponential_ease_in_out(p f64) f64

veasing.elastic_ease_in(p f64) f64
veasing.elastic_ease_out(p f64) f64
veasing.elastic_ease_in_out(p f64) f64

veasing.back_ease_in(p f64) f64
veasing.back_ease_out(p f64) f64
veasing.back_ease_in_out(p f64) f64

veasing.bounce_ease_in(p f64) f64
veasing.bounce_ease_out(p f64) f64
veasing.bounce_ease_in_out(p f64) f64
```

## Testing

To run the tests you will need to do the following:

1. Clone the repository somewhere
2. Move to the parent folder of that cloned repository
3. Run `v -stats test /cloned-folder-path`

## Credits

Based on the works of:
- [Robert Penner](http://robertpenner.com/easing/)
- [George McGinley Smith](http://gsgd.co.uk/sandbox/jquery/easing/)
- [James Padolsey](http://james.padolsey.com/demos/jquery/easing/)
- [Matt Gallagher](http://cocoawithlove.com/2008/09/parametric-acceleration-curves-in-core.html)
- [Jesse Crossen](http://stackoverflow.com/questions/5161465/how-to-create-custom-easing-function-with-core-animation)


## License
[GPL-3.0](LICENSE)

