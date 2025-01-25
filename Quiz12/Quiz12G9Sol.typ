#import "@local/noah:0.1.0": *
#set page("presentation-16-9")
#set math.mat(align: right)
#set math.mat(column-gap: 1em)
#set math.vec(align: right)



#stack(
  spacing: 3.5pt,
  grid(
  columns: (50%, 50%),
  rows: auto,
  image("thumbnail_KIU2-1.png", height: 1.5cm),
  stack(
    spacing: 3pt,
    align(right)[#text(rgb("#1A3C6E"))[= Quiz (G-9)]],
    
    

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
#solution[
  $ "At first to find eigenvalues we do:  " det(A - lambda I) = 0 => 
    (1 - lambda)(3 - lambda) - 8 = 0  =>lambda^2 -4 lambda -5 = 0 => lambda_1 = 5, lambda_2 = -1 \

  E_5 = ker(A - 5I_2) = ker mat(-4, 2; 4, -2) => "by inspection" E_5 = s p a n vec(1, 2)
  \
  E_(-1) = ker(A + I_2)  = ker mat(2, 2; 4, 4) => s p a n vec(1, -1) \
  mat(1, 2; 4, 3) vec(1, 2) = vec(5, 10) = 5 vec(1, 2)
  \
  mat(1, 2; 4, 3) vec(1, -1) = vec(-1, 1) = (-1) vec(1, -1) \ " so we see that our vectors we found are eigenvectors of" A \
  "The vectors" vec(1,2), vec(1, -1) "form an eigenbasis for" A, "so" A "is diagonalizable, with" S = mat(1, 1; 2, -1) "and" B = mat(5, 0; 0, -1) 

  $
]
\

#problem[
  
  #align(center)[Which of the following statements are true?..(Explain why)]
  
  #align(center)[
    - #align(left)[*(S1)* Every $2 times 2 $ matrix has an eigenvector]
    - #align(left)[
      *(S2)* if $A$ and $B$ are two $n times n$ matrices such that $A B = B A$,  and if $u$ is an eigenvector of $B$,\ then $A u$ is an eigenvector of $B$ as well
    ]
    - #align(left)[*(S3)* if $u$ and $v$ are the eigenvectors of a $2 times 2$
      matrix $A$, then $u - v$ is also an eigenvector of $A$]
  ]
  

]

#solution[
  *(S1)* The statement if #text(fill: red, "false"). The matrix $mat(1, 1; -1, 1)$ has no eigenvectors since its characteristic polynomial is $(1 - lambda)^2 + 1$, which cannot be factored on $RR$

  *(S2)* The statement is #text(fill: green, "true").
  Assume $u$ is an eigenvector of $B$ and let $lambda$ be the corresponding eigenvalue. Then :
  $ B(A u) = A (B u) = A (lambda u)  = lambda A(u) $
  Hence $A u$ is an eigenvector of $B$ corresponding to the eigenvalue $lambda$

  *(S3)* The statement is #text(fill: red, "false").
  Let $A = mat(2, 0; 0, 1).$ Then $u = vec(1, 0)$ 
  and $v = vec(0, 1)$ are the eigenvectors of $A$.
  \ However, $u - v = vec(1, -1)$ is not an eigenvector of $A$ since $ A(u - v) = vec(2, 1) $

]







