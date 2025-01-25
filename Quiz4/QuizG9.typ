#import "@preview/ctheorems:1.1.2": *
#import "@local/noah:0.1.0": *
#import "@preview/physica:0.9.3": *
#set page("presentation-4-3")
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
    0, 0
  )
    $  
  

]


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


#problem[
  
    $
    "Let " T : RR^2  -> RR^2 " be the reflection over the" y"-axis. Is "T "invertible?" \
    "If so, what is" T^(-1)?
    
  $
  
]
