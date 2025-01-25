#import "@local/noah:0.1.0": *
#set page("presentation-4-3")
#set math.mat(align: center)
#set math.mat(column-gap: 0.7em)



#stack(
  spacing: 3.5pt,
  grid(
  columns: (50%, 50%),
  rows: auto,
  image("thumbnail_KIU2-1.png", height: 1.5cm),
  stack(
    spacing: 1pt,
    align(right)[#text(rgb("#1A3C6E"))[= Quiz 4(G-1)]],
    "",
    

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
  W = {vec(x_1, x_2, x_3) in RR^3 : x_1^2 + x_2 + x_3 = 0}
  \
  "Is" W "a subspace of" RR^3? "Explain your answer"
  $
  
]


#problem[
  
  $
    "Find the kernel of the linear transformation"
    T : RR^2 -> RR^2 "Given by"\
    T vec(x_1, x_2) = mat(12, -1; 3, 0)vec(x_1, x_2)
    
  $
  
]


#problem[
  
    $
    "Find a basis of the image of the matrix: "\
    mat(1, 1, 1; 1, 2, 5; 1, 3, 7;
      
    )
    
  $
  
]
// #problem[
//   #text("Bonus", size: 15pt, font: "CodeNewRoman Nerd Font Mono")
//   $
//     "Consider an" n times n "matrix" A.""
//     "Show that " im(A^2)" is a subset of"im(A)
//     \
//     "That is, each vector in" im(A^2)
//     "is also in" im(A)
//   $
// ]
