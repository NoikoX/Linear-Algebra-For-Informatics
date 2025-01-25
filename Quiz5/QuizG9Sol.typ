#import "@local/noah:0.1.0": *
#set page("presentation-16-9")
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

#solution[
  $
    "Since the zero vector" bold(0) "does not satisfy the defining relation "\
    x_1^2 - 4x_2 + 5x_3 = 2, 
    "it is not in" W.
    "Hence" W "is not a subspace of" RR^3,"thats it.."
  $
]
\


#problem[
  
  $
    "Find the kernel of the linear transformation"
    T : RR^2 -> RR^2 "Given by"\
    T vec(x_1, x_2) = mat(7, 1; 0, -3)vec(x_1, x_2)
    
  $
  
]
#solution[
  $
    "To find the kernel of" T, 
    "we solve "\
    mat(7, 1; 0, -3)vec(x_1, x_2) = vec(0, 0)
    \
    "This gives the equations: "7x_1 + x_2 = 0, -3x_2 = 0 " " ==> k e r n e l(T)  ={vec(0, 0)}

  $
]


\
#problem[
  
  
  $"                                 Show that given vectors are linearly dependent"$
  $
  
  
    vec(0, -1, 3), vec(-2, 3, 0), vec(-6, 7, 6)
     
  $
  
  
]


#solution[
  #set math.mat(align: right)

  $
    "To show that those vectors are linearly dependent, we need to find coefficients" a, b, c "such that: "\
    a vec(0, -1, 3) +  b vec(-2, 3, 0) + c vec(-6, 7, 6) = vec(0, 0, 0)
    

  $
  $
    mat(
      0, -2, -6, 0;
      -1, 3, 7, 0;
      3, 0, 6, 0;
      augment: #3
    )
   ==>^(R_1 <-> R_2)
   mat(
      -1, 3, 7, 0;
      0, -2, -6, 0;
      3, 0, 6, 0;
      augment: #3
    )
   ==>^(R_3 = R_3 + 3R_1)
   mat(
      -1, 3, 7, 0;
      0, -2, -6, 0;
      0, 9, 27, 0;
      augment: #3
    )
   ==>^(R_2 = R_2 * -1/2)
   mat(
      -1, 3, 7, 0;
      0, 1, 3, 0;
      0, 9, 27, 0;
      augment: #3
    )
   ==>^(R_3 = R_3 - 9R_2)
   mat(
      -1, 3, 7, 0;
      0, 1, 3, 0;
      0, 0, 0, 0;
      augment: #3
    )
  $

  \
  $
    "We conclude that the vectors are linearly dependent as we have a free variable."
    \

  $
  $
    a = -2c, b = -3c, c = c...
  $
]

