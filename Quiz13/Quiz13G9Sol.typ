#import "@local/noah:0.1.0": *
#set page("presentation-4-3")
#set math.mat(align: right)
// #set math.vec(align: right)
// #set math.vec(delim: "[")

// #set math.mat(column-gap: 0.6em)
#set math.vec(gap: 0.0001cm)





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
    "if" V "is a subspace of" RR^n "with an orthonormal basis" arrow(u)_1, dots, arrow(u)_m,
    "then "
  $
  $
    "proj"_V arrow(x) = (arrow(u)_1 dot arrow(x))arrow(u)_1 + dots.c + (arrow(u)_m dot arrow(x))arrow(u)_m space space forall arrow(x) in RR^n
  $
  
]
#problem[
  $
    "Find the orthogonal projection of"
    vec(1, 0, 0, 0) "onto the subspace of" RR^4
    "spanned by"
    vec(1, 1, 1, 1), vec(1, 1, -1, -1), vec(1, -1, -1, 1)
  $
]

#solution[
  $
    "So since the" 3 "given vectors in the subspace are orthogonal, we have the orthonormal basis:"

  $
  $
    arrow(u)_1 = 1/2 vec(1, 1, 1, 1),
    arrow(u)_2 = 1/2 vec(1, 1, -1, -1),
    arrow(u)_3 = 1/2 vec(1, -1, -1, 1)\ 
    "Now using the theorem above with" x = e_1 : 
    "proj"_V x = (arrow(u)_1 dot arrow(x)) arrow(u)_1
    + (arrow(u)_2 dot arrow(x)) arrow(u)_2
    + (arrow(u)_3 dot arrow(x)) arrow(u)_3 = 1/4 vec(3, 1, -1, 1)
  $
]

#problem[
  $
    "Find the angle between the vectors"

  $
  $
    arrow(x) = (1, 0, 0, 0)^T "and" 
    arrow(y) = (1, 1, 1, 1)^T.
  $
]

#solution[
  $
    "Dot product of two vectors can be written as "
    arrow(x) dot arrow(y) "as well as" 
    norm(arrow(x)) norm(arrow(y))cos(theta) "where" theta "is the angle between those vectors"
    \ 
    "so from that we get"
    theta = arccos (arrow(x) dot arrow(y)) / 
    (norm(arrow(x)) norm(arrow(y))) = arccos(1/2) = pi / 3

  $
]


#problem[
  $
    "Find all vectors orthogonal to both" 
    v = vec(1, 1, -1) "and" w = vec(1, 1, 1)
  $

]

#solution[
  $
    "We have to solve the system of two homogeneous equations"
    \
    0 = x dot v = vec(x_1, x_2, x_3) dot vec(1, 1, -1)
    = x_1 + x_2 - x_3
    \
    0 = x dot v = vec(x_1, x_2, x_3) dot vec(1, 1, 1)
    = x_1 + x_2 + x_3 "(solve it however u want..)"
    \
    mat(1, 1, -1; 1, 1, 1) ==> ^("RREF") mat(1, 1, 0; 0, 0, 1)
    \
    "The parametric vector form of the solution set is"
    \
    vec(x_1, x_2, x_3) = x_2 vec(-1, 1, 0)
    \
    "Therefore the answer is line" "Span"{vec(-1, 1, 0)}
  $
]







