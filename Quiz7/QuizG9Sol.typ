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
    (2 + 2i)^10
  $
]

#solution[
  $
    (2 + 2i)^10 = 2^10 (1 + i)^10 " so now lets just calculate that" \
    (1 + i) => r = sqrt(1 + 1)=2, space theta = arctan(1/1)= pi/4 " so that complex number in polar coorinates will be:"\ (1 + i) <=> sqrt(2)(cos(pi/4) + i sin(pi/4)) \
    "Now we can apply the De Moivre's theorem:"
    z^n = r^n (cos(n dot theta) + i sin(n dot theta)) \
    => 2 ^ 10 dot sqrt(2)^10 (cos(10 dot pi/4) + i sin(10 dot pi / 4)) => 2 ^ 15 (cos((5 pi)/2) + i sin((5 pi)/2 )) \
    => 2 ^ 15 (cos(pi/2) + i sin(pi/ 2)) => 2^15 dot i
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
    "Find all" 6^("th") "roots of" -64
  $
]

#solution[
  $
    "General root formula for the nth roots of a complex number " r(cos(theta) + i sin(theta)) ":"
    \
    x_i = root(n, r) dot (cos((theta + 2 pi k_i)/n) + i sin((theta + 2 pi k_i) / n))
    " where " k = 0, 1, 2,  dots n - 1 \
    -64 "in polar form " -64 = 64 dot (cos(pi ) + i sin(pi)), r = 64, space theta = pi, space  n = 6
    \ "for example" x_0 = 2 dot (cos((pi + 2 pi dot 0)/6) + i sin((pi + 2 pi dot 0)/6)) => \
    x_0 = 
    2 dot (cos(pi/6) + i sin(pi/6)) <=> 
     x_0 = 2(sqrt(3)/2 + i 1/2) = sqrt(3) + i \
     x_1 = 2(cos(pi/2) + i sin(pi/2)) <=> x_1 = 2(0 + i) = 2i
    \
    "for " k = 2, 3... " you can continue like that" dots
  $

] \
\
\
\

#problem[
  $
    "Find all solutions of the equation" e^(i x) = -1
  $
]
#solution[
  $
    "We know that" e^(i x) = cos(x) + i sin(x)
    \ " So in our case: " cos(x) + i sin(x) = -1 => "Since it has no imaginary part, the " sin(x) = 0 "and "cos(x) = -1 \
    "From trigonometry we know that " x = pi + 2 pi k, space forall k in Z
  $
]


