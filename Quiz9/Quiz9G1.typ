#import "@local/noah:0.1.0": *
#set page("presentation-16-9")
#set math.mat(align: right)
#set math.mat(column-gap: 0.7em)


#stack(
  spacing: 3.5pt,
  grid(
  columns: (50%, 50%),
  rows: auto,
  image("thumbnail_KIU2-1.png", height: 1.5cm),
  stack(
    spacing: 3pt,
    align(right)[#text(rgb("#1A3C6E"))[= Quiz (G-1)]],
    
    

    align(right)[Linear Algebra for Informatics],  

    align(right)[Fall semester 2024],

    align(right)[Noe Lomidze]
  )

),  
line(length: 100%, stroke: rgb("#1A3C6E"))
)

#show heading: it => {
  set text(weight: "regular")
  align(center, smallcaps(it))
}

#problem[
  $
    "
    At first, check if the transformation is linear
    "\
    "find it's kernel and image"
    \
    "is it an isomorphism or not? why?"
    \
    T(f(t)) = integral_(-2)^3 f(t) dif t  " from " P_2 "to" RR
   $
]


#problem[
  $

    "Show examples of isomorphisms from"
    P_3 "to" RR^3
    \
    "(just 2 or 3 examples)"
  $
]


