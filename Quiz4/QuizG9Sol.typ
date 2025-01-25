// #import "@preview/ctheorems:1.1.2": *
#import "@local/noah:0.1.0": *
// #import "@preview/physica:0.9.3": *
#set page("presentation-16-9")
#set math.mat(align: right)



#stack(
  spacing: 3.5pt,
  grid(
  columns: (50%, 50%),
  rows: auto,
  image("thumbnail_KIU2-1.png", height: 1.5cm),
  stack(
    spacing: 4pt,
    align(right)[#text(rgb("#1A3C6E"))[= Quiz 4]],
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
    "Find all matrices "X "that satisfy the given matrix equation"
    mat(
      
      1, 2;
      2, 4
    )
    X
      = mat(
    
      0, 0;
      0, 0;
      
    )
      $  
    
]

#solution[
  
    $
    mat(
      1, 2;
      2, 4;
      
    )
    mat(
      a, b;
      c, d;
      
    ) = 
    mat(
      a + 2c, b + 2d;
      2a + 4c, 2b + 4d;
      
    )
    => 
    a + 2c = 0,#h(0.2cm) b + 2d = 0,#h(0.2cm)
    2a + 4c = 0, #h(0.2cm) 2b + 4d = 0 \
    => a = -2c " and " b = -2d \
    "Thus " X = mat(
      -2c, -2d;
      c, d;
      
    ) "where " c, d "are arbitrary constants "
  $
  
]
\

#problem[
  
    $
    "Find the inverse of the matrix" 
    mat(
      
      1, 0, 4;
      0, 1, 2;
      0, -3, -4;
      
    )
  $
  
]

#solution[
  #set math.mat(align: right)
  
  $
    mat(
      
      1, 0, 4,1, 0, 0;
      0, 1, 2,0, 1, 0;
      0, -3, -4, 0, 0, 1;
      augment: #3
      
    )
   ==>^(R_3 = R_3 + 3R_2) 
   mat(
      
      1, 0, 4, 1, 0, 0;
      0, 1, 2, 0, 1, 0;
      0, #text(fill: red, "0"), #text(fill: red, "2"), 0, #text(fill: red, "3"), 1;
      augment: #3

   )
   ==>^(R_1 = R_1 - 2R_3\ R_2 = R_2 - R_3)
   mat(
    1, 0, #text(fill: red, "0"), 1, #text(fill: red, "-6"), #text(fill: red, "-2"),;
    0, 1, #text(fill: red, "0"), 0, #text(fill: red, "-2"), #text(fill: red, "-1"),;
    0, 0, 2, 0, 3, 1;
    augment: #3
    
   )
  $
  \
  $ 
    "And finally" 
    ==>^(R_3 = R_3 / 2) 
    mat(
      
      1, 0, 0, 1, -6, -2;
      0, 1, 0, 0, -2, -1;
      0, 0, #text(fill: red, "1"), 0, #text(fill: red, $3/2$), #text(fill: red, $1/2$),;
      augment: #3
    )
    "So we get that "
    mat(
      1, 0, 4;
      0, 1, 2;
      0, -3, -4;
    )^(-1) = 
    mat(
      1, -6, -2;
      0, -2, -1;
      0, 3/2, 1/2;
    )
  $
  
]

\
#problem[
  
    $
    "Let " T : RR^2  -> RR^2 " be the reflection over the" y"-axis. Is "T "invertible?" \
    "If so, what is" T^(-1)?
    
  $
  
]

#solution[
  $
    "We've seen that matrix for" T "is"\
    
    A = mat(
      
      -1, 0;
      0, 1;
      
    ) 
    " So it's easy to see that " A^(-1) = A
  $
  $
    mat(
      -1, 0, 1, 0;
      0, 1, 0, 1;
      augment: #2
    )
     ==>^(R_1 = -R_1) 
    mat(
      1, 0, -1, 0;
      0, 1, 0, 1;
      augment: #2
    )
    "thats it." T^(-1) = T \
    
  $
  #align(left)[
      #text(size: 15pt,fill: rgb("#ca5e5e"), "This is another way of saying that a reflection “undoes” itself")
    ]
]

