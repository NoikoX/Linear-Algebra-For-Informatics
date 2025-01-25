#import "@local/noah:0.1.0": *
#set page("presentation-16-9")
#set math.mat(align: center)
#set math.mat(column-gap: 0.7em)


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
    "What is the dimension of the space of all" 
    \ "upper triangular " n times n "matrices?"
  $
]
#solution[
  $
    "You gotta count the number of nonzero entries in upper triangular matrix so: " \
    mat(a_11, a_12, dots, a_(1n); 0, a_22,  dots, a_(2n);
    dots.v, dots.v, dots.down, dots.v;
    0, 0, dots, a_(n n)
    )
    "so its just " 1 + 2 + 3 + dots + n = (n times (n + 1)) / 2
  $
]


#problem[
  $
    "Find a basis of the space of all" 2 times 2 
    "matrices" S "such that"\
     mat(1, 1; 1, 1) S  = S mat(2, 0; 0, 0)


  $
]

#solution[
  $
    mat(1, 1; 1, 1) S  = S mat(2, 0; 0, 0)  <=> 
    \
    "By " S = mat(a, b; c, d) "we get" -> mat(a + c, b + d; a + c, b + d) = mat(2a, 0; 2c, 0) => a = c, b = -d \
    "so, " mat(a, b; a, -b) "can be written as :"
    a mat(1, 0; 1, 0) + b mat(0, 1; 0, -1), "meanign that" \
    mat(1, 0; 1, 0), mat(0, 1; 0, -1) "is a basis."

  $
]


