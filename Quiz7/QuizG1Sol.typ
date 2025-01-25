#import "@local/noah:0.1.0": *
#set page("presentation-16-9")
#set math.mat(align: right)
// #set math.mat(column-gap: 0.7em)


#stack(
  spacing: 3.5pt,
  grid(
  columns: (50%, 50%),
  rows: auto,
  image("thumbnail_KIU2-1.png", height: 1.5cm),
  stack(
    spacing: 3pt,
    align(right)[#text(rgb("#1A3C6E"))[= Quiz (G-9)]],
    
    

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


// #theorem[
//   $
//     "De Moivre's Theorem: " z ^ n =
//     r^n (cos(n dot theta) + i sin(n dot theta))
//   $
// ]
#problem[
  $
    "Compute "
    (4 + 4i)^10
  $
]

#solution[
  $
    (4 + 4i)^10 = 4^10 (1 + i)^10 " so now lets just calculate that" \
    (1 + i) => r = sqrt(1 + 1)=2, space theta = arctan(1/1)= pi/4 " so that complex number in polar coorinates will be:"\ (1 + i) <=> sqrt(2)(cos(pi/4) + i sin(pi/4)) \
    "Now we can apply the De Moivre's theorem:"
    z^n = r^n (cos(n dot theta) + i sin(n dot theta)) \
    => 4 ^ 10 dot sqrt(2)^10 (cos(10 dot pi/4) + i sin(10 dot pi / 4)) => 2 ^ 25 (cos((5 pi)/2) + i sin((5 pi)/2 )) \
    => 2 ^ 25 (cos(pi/2) + i sin(pi/ 2)) => 2^25 dot i
  $
]
// #theorem[
//   $
//     "General root formula for the nth roots of a complex number " r(cos(theta) + i sin(theta)) ":"
//     \
//     x_i = root(n, r) dot (cos((theta + 2 pi k_i)/n) + i sin((theta + 2 pi k_i) / n))
//     " where " k = 0, 1, 2,  dots n - 1
//   $
// ]
#problem[
  $
    "Find all" 5^("th") "roots of" -32
  $
]

#solution[
  $
    "General root formula for the nth roots of a complex number " r(cos(theta) + i sin(theta)) ":"
    \
    x_i = root(n, r) dot (cos((theta + 2 pi k_i)/n) + i sin((theta + 2 pi k_i) / n))
    " where " k = 0, 1, 2,  dots n - 1 \
    -32 "in polar form " -32 = 32 dot (cos(pi ) + i sin(pi)), r = 32, space theta = pi, space  n = 5
    \ "for example" x_0 = 2 dot (cos((pi + 2 pi dot 0)/5) + i sin((pi + 2 pi dot 0)/5)) =>
    2 dot (cos(pi/5) + i sin(pi/5)) 
    "for " k = 1, 2, 3... " you can continue like that" dots
    
    \
    x_0 = 2(cos(pi/5) + i sin(pi/5))\
    x_1 = 2(cos((3pi)/5) + i sin((3pi)/5)) dots 
  $

] \
\
\
\

#problem[
  $
    "Find all solutions of the equation" e^(i x) = i
  $
]
#solution[
  $
    "We know that" e^(i x) = cos(x) + i sin(x)
    \ " So in our case: " cos(x) + i sin(x) = i => "Since it has no real part, the " cos(x) = 0 "and "sin(x) = 1 \
    "From trigonometry we know that " x = pi/2 + 2 pi k, space forall k in Z
  $
]


