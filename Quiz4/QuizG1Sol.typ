#import "@preview/ctheorems:1.1.2": *
#import "@local/noah:0.1.0": *
#import "@preview/physica:0.9.3": *
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
    
    2, 3;
    1, -1
  )
  X
    = mat(
    
    0, 0;
    0, 0
  )
    $  
]

#solution[
  $
    mat(2, 3; 1, -1) mat(a, b;c, d) =
    mat(
      2a + 3c, 2b + 3d;
      a - c, b - d;
    ) => 
    2a + 3c = 0, a - c = 0, 2b + 3d = 0, b - d = 0\
    a = -3/2c and a = c ==> c = a = 0\
    b = -3/2d and b = d ==> d = b = 0
    \ "Thus " X = mat(0, 0; 0, 0)


  $
]

#problem[
  #set math.mat(align: center)
  
    $
    "Find the inverse of the matrix" 
    mat(
      
      1, 1, 2;
      2, -1, 0;
      2, 2, 1;
      
    )
  $
  
]


#solution[
  #set math.mat(align: right)

  $
    mat(
      1, 1, 2, 1, 0, 0;
      2, -1, 0, 0, 1, 0;
      2, 2, 1, 0, 0, 1;
      augment: #3
    )
   ==>^(R_2 = R_2 - 2R_1)
   mat(
      1, 1, 2, 1, 0, 0;
      0, -3, -4, -2, 1, 0;
      2, 2, 1, 0, 0, 1;
      augment: #3
   )
   ==>^(R_3 = R_3 - 2R_1)
   mat(
      1, 1, 2, 1, 0, 0;
      0, -3, -4, -2, 1, 0;
      0, 0, -3, -2, 0, 1;
      augment: #3
   )\
   ==>^(R_3 = -R_3 / 3)
   mat(
      1, 1, 2, 1, 0, 0;
      0, -3, -4, -2, 1, 0;
      0, 0, 1, 2/3, 0, -1/3;
      augment: #3
   )
   ==>^(R_2 = R_2 + 4R_3)
   mat(
      1, 1, 2, 1, 0, 0;
      0, -3, 0, 2/3, 1, -4/3;
      0, 0, 1, 2/3, 0, -1/3;
      augment: #3
   )
   ==>^(R_2 = -R_2 / 3)
   mat(
      1, 1, 2, 1, 0, 0;
      0, 1, 0, -2/9, -1/3, 4/9;
      0, 0, 1, 2/3, 0, -1/3;
      augment: #3
   )
   ==>^(R_1 = R_1 - 2R_3\ R_1 = R_1 - R_2)
   mat(
      1, 0, 0, -1/9, 1/3, 2/9;
      0, 1, 0, -2/9, -1/3, 4/9;
      0, 0, 1, 2/3, 0, -1/3;
      augment: #3
   )
  $
  \
  $ 
    "Thus, the inverse is"
    mat(
      1, 1, 2;
      2, -1, 0;
      2, 2, 1;
    )^(-1) = 
    mat(
      -1/9, 1/3, 2/9;
      -2/9, -1/3, 4/9;
      2/3, 0, -1/3;
    )
  $
]





#problem[
  
    $
    "Let " T : RR^2  -> RR^2 " be the orthogonal projection onto the vector" u = vec(1, 1)". Is "T "invertible?" \
    "If so, what is" T^(-1)?
    
  $
  
]

#solution[
  
  $
    "An orthogonal projection onto a vector"
    u = vec(1, 1) "in" RR^2 "is not invertible"
  $
  $
    "When you project a vector onto" u, 
    " you essentiall map" RR^2 "onto a line in the direction of" u.\ 
    "The projection matrix T can be expressed as:"
    
    \ T = 1/2mat(1, 1; 1, 1;)
    "Which you can easily check that isn't invertible"
  $
  


]
