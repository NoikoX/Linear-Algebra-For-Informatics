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

#definition[
  $
    "Consider an eigenvalue" lambda "of an" n times n  
    "matrix" A. "Then the kernel of the matrix " \
    A - lambda I_n
    "is called the "italic("eigenspace") "associated with" lambda
    , "denoted by" E_lambda: 
  $
  $
    E_lambda = ker(A - lambda I_n) = {arrow(v) in RR^n 
    : A arrow(v) = lambda arrow(v)}
  $
]

#problem[
  $
    "Find the eigenspaces of the matrix" A = mat(1, 2; 4, 3).
    "Diagonalize matrix" A "if you can.."

  $
]

#problem[
  
  #align(center)[Which of the following statements are true?..(Explain why)]
  
  #align(center)[
    - #align(left)[*(S1)* Every $2 times 2 $ matrix has an eigenvector]
    - #align(left)[
      *(S2)* if $A$ and $B$ are two $n times n$ matrices such that $A B = B A$,  and if $u$ is an eigenvector of $B$,\ then $A u$ is an eigenvector of $B$ as well
    ]
    - #align(left)[
      *(S3)* if $u$ and $v$ are the eigenvectors of a $2 times 2$
      matrix $A$, then $u - v$ is also an eigenvector of $A$]
  ]
  

]







