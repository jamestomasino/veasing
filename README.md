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
... then in your v source:

```v
import jamestomasino.veasing as easing

```
The following easing methods are available:

```
linear_interpolation
quadratic_ease_in
quadratic_ease_out
quadratic_ease_in_out
cubic_ease_in
cubic_ease_out
cubic_ease_in_out
quartic_ease_in
quartic_ease_out
quartic_ease_in_out
quintic_ease_in
quintic_ease_out
quintic_ease_in_out
sine_ease_in
sine_ease_out
sine_ease_in_out
circular_ease_in
circular_ease_out
circular_ease_in_out
exponential_ease_in
exponential_ease_out
exponential_ease_in_out
elastic_ease_in
elastic_ease_out
elastic_ease_in_out
back_ease_in
back_ease_out
back_ease_in_out
bounce_ease_in
bounce_ease_out
bounce_ease_in_out
```

## License
[GPL-3.0](LICENSE)

