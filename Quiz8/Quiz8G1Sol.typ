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
    "Consider "V, "the set of all invertible" 
    3 times 3
    "matrices "\
    "is" V "subspace of " R^(3 times 3)?
  $
]

#solution[
  $

    "Consider just " I_3 "and" -I_3,\ " 
    both are invertible but their sum is not.. so its not a subspace"
  $
]
\
\
\



#problem[
  $
    "Find a basis of the space of all" 2 times 2 
    "matrices" A "such that"\
    A mat(1, 1; 1, 1) = mat(0, 0; 0, 0)


  $
]

#solution()[
  $
    "Let's say that " A = mat(a, b; c, d) " then"
     => mat(a, b; c, d) mat(1, 1; 1, 1) = mat(a + b, a + b; c + d, c + d)
      = mat(0, 0; 0, 0)
      \
      "so from here we get that" a = -b "and " c = -d <==> A = mat(-b, b; -d, d)
      \
      "We can express " A "as" b mat(-1, 1; 0, 0) + d mat(0, 0; -1, 1) ". thus:
      "\

      
      mat(-1, 1; 0, 0) " and " mat(0, 0; -1, 1) "is a basis and dimension is just" 2

  $
]


