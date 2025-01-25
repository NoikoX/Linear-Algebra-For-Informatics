#import "@local/noah:0.1.0": *
#set page("presentation-4-3")
#set math.mat(align: right)
#set math.mat(column-gap: 1em)


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
    "What are the possible real eigenvalues of an orthogonal" n 
    times n "matrix" A? "  (Explain why)"\
    "(if" A "is an orthogonal matrix, then the linear transformation " T(arrow(x)) = A x "preserves length...)" 

  $
]

#problem[
  $
    "Consider the matrix" A = mat(0, 6, 8; 1/2, 0, 0; 0, 1/2, 0) "and vectors" v = vec(16, 4, 1) space space w = vec(2, 2, 2) \
    "Which are eigenvectors? What are their eigenvalues?"
  $
]


#problem[
  $
    "Find the eigenvalues of the matrices": A =  mat(-5, 7; 6, 9; 8, 3), B = (9)
  $
]




