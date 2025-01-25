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

#solution[
  $
    "Consider" bold("Additive Property")\
    vec(1, 3, -4) "and" vec(2, 6, -10) "are both in "W
    "but their sum:" vec(3, 9, -14) "is not"
    "Since" 3^2 + 9 -14 = 4  !=0
    \
    "So" W "is not a subspace of" RR^3

  $
]



#problem[
  
  $
    "Find the kernel of the linear transformation"
    T : RR^2 -> RR^2 "Given by"\
    T vec(x_1, x_2) = mat(12, -1; 3, 0)vec(x_1, x_2)
    
  $
  
]

#solution[
  $
    "To find the kernel of" T "we solve:"\
    mat(12, -1; 3, 0)vec(x_1, x_2) = vec(0, 0)\
    "This gives the equations: " 12x_1 -x_2 = 0, 
    3x_1+1 = 0 ==> k e r n e l(T)= {vec(0, 0)}

  $
]\
\


#problem[
  
    $
    "Find a basis of the image of the matrix: "\
    mat(1, 1, 1; 1, 2, 5; 1, 3, 7;
    )
    
  $
  
]
#solution[
  #set math.mat(align: right)
  
  $
    "To find the basis of the image of matrix" \
    mat(
      1, 1, 1;
      1, 2, 5;
      1, 3, 7
    ) "we perform row operations:"
  $
  
  $ 
   mat(
      1, 1, 1;
      1, 2, 5;
      1, 3, 7;
   )
   ==>^(R_2 = R_2 - R_1 \ R_3 = R_3 - R_1) 
   mat(
      1, 1, 1;
      0, 1, 4;
      0, 2, 6
   )
   ==>^(R_3 = R_3 - 2R_2)
   mat(
      1, 1, 1;
      0, 1, 4;
      0, 0, -2
   )
   ==>^(R_3 = -R_3 / 2)
   mat(
      1, 1, 1;
      0, 1, 4;
      0, 0, 1
   )
   ==>^(R_1 = R_1 - R_3 \ R_2 = R_2 - 4R_3)
   mat(
      1, 1, 0;
      0, 1, 0;
      0, 0, 1
   )
  $

  $
    "The pivot columns correspond to the original matrix columns 1, 2, and 3." \
    "Thus, a basis for the image is:" \
    vec(1, 1, 1), vec(1, 2, 3), vec(1, 5, 7).
  $
]

