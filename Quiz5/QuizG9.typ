#import "@local/noah:0.1.0": *
#set page("presentation-4-3")
#set math.mat(align: center)
// #set math.mat(column-gap: 0.7em)
#set math.vec(align: right)


#stack(
  spacing: 3.5pt,
  grid(
  columns: (50%, 50%),
  rows: auto,
  image("thumbnail_KIU2-1.png", height: 1.5cm),
  stack(
    spacing: 1pt,
    align(right)[#text(rgb("#1A3C6E"))[= Quiz 4(G-9)]],
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
  W = {vec(x_1, x_2, x_3) in RR^3 : x_1 - 4x_2 + 5x_3 = 2}
  \
  "Is" W "a subspace of" RR^3? "Explain your answer"
  $
  
]


#problem[
  
  $
    "Find the kernel of the linear transformation"
    T : RR^2 -> RR^2 "Given by"\
    T vec(x_1, x_2) = mat(7, 1; 0, -3)vec(x_1, x_2)
    
  $
  
]


#problem[
  
  
  $"                                 Show that vectors: "$
  $
  
  
    vec(0, -1, 3), vec(-2, 3, 0), vec(-6, 7, 6) \
     
  $
  $"                                 are linearly dependent"$
  

  
]
