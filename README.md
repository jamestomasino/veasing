# veasing

This is a pure V module that provides easing function calculations.

Based on the works of:
- [Robert Penner](http://robertpenner.com/easing/)
- [George McGinley Smith](http://gsgd.co.uk/sandbox/jquery/easing/)
- [James Padolsey](http://james.padolsey.com/demos/jquery/easing/)
- [Authors of jQuery](http://plugins.jquery.com/project/Easing)
- [Matt Gallagher](http://cocoawithlove.com/2008/09/parametric-acceleration-curves-in-core.html)
- [Jesse Crossen](http://stackoverflow.com/questions/5161465/how-to-create-custom-easing-function-with-core-animation)

# Usage:

```shell
v install jamestomasino.veasing
```
And then in your v source:

```v
import jamestomasino.veasing as veasing

```
The following easing methods are available:

``` v
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

## License
[GPL-3.0](LICENSE)

