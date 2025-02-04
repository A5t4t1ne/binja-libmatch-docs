== External links

```typst
#show: ilm.with(
  external-link-circle: false,
)
```




== Tables
In order to increase the focus on table content, we minimize the table's borders by using thin gray lines instead of thick black ones. Additionally, we use small caps for the header row. Take a look at the table below:

#let unit(u) = math.display(math.upright(u))
#let si-table = table(
  columns: 3,
  table.header[Quantity][Symbol][Unit],
  [length], [$l$], [#unit("m")],
  [mass], [$m$], [#unit("kg")],
  [time], [$t$], [#unit("s")],
  [electric current], [$I$], [#unit("A")],
  [temperature], [$T$], [#unit("K")],
  [amount of substance], [$n$], [#unit("mol")],
  [luminous intensity], [$I_v$], [#unit("cd")],
)

#figure(caption: ['Ilm's styling], si-table)

For comparison, this is how the same table would look with Typst's default styling:

#[
  #set table(inset: 5pt, stroke: 1pt + black)
  #show table.cell.where(y: 0): it => {
    v(0.5em)
    h(0.5em) + it.body.text + h(0.5em)
    v(0.5em)
  }
  #figure(caption: [Typst's default styling], si-table)
]

= Custom snippets

#let snip(cap) = figure(caption: cap)[
  ```rust
  fn main() {
      let user = ("Adrian", 38);
      println!("User {} is {} years old", user.0, user.1);

      // tuples within tuples
      let employee = (("Adrian", 38), "die Mobiliar");
      println!("User {} is {} years old and works for {}", employee.0.1, employee.0.1, employee.1);
  }
  ```
]

