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


// #theorem[
//   $
//     "De Moivre's Theorem: " z ^ n =
//     r^n (cos(n dot theta) + i sin(n dot theta))
//   $
// ]

#problem[
  $
    "Consider "V, "the set of all invertible" 
    3 times 3
    "matrices "\
    "is" V "subspace of " R^(3 times 3)?
  $
]


#problem[
  $
    "Find a basis of the space of all" 2 times 2 
    "matrices" A "such that"\
    A mat(1, 1; 1, 1) = mat(0, 0; 0, 0)


  $
]


