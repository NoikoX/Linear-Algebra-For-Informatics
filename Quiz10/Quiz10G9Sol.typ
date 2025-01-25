#import "@local/noah:0.1.0": *
#set page("presentation-4-3")
#set math.mat(align: right)
#set math.mat(column-gap: 0.7em)
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

#problem[
  $
    "Compute " det mat(0, -7, -4; 2, 4, 6; 3, 7, -1) " and : "
    \
    det (mat(3, 7, -1; 2, 4, 6; 0, -7, -4) times
    mat(2, 4, 6; 3, 7, -1; 0, -7, -4) times
    mat(2, 4, 6; 0, -7, -4; 3, 7, -1) times
    mat(-1, -2, -3; 0, -7, -4; 3, 7, -1) 
    )
  $
]
#solution[
  $
    det mat(0, -7, -4; 2, 4, 6; 3, 7, -1) => 
    0 dot det mat(4, 6; 7, -1) - (-7) dot det mat(2, 6; 3, -1) + (-4) det mat(2, 4; 3, 7) = 0 + 7(-2-18) - 4(14-12) = -140-8=-148  \
    "For the second part :" \
    det(A B C D) = det(A)det(B)det(C)det(D)
  

  $
  First matrix is made by swapping the 1st and 3th rows from the above matrix, (swapping two rows in the matrix multiplies det(A) by -1)    so $det(A) = 148$\
  Second matrix is made by swapping the 1st and 2nd rows from the previous one so $det(B) = -148$ \
  Third matrix is made by swapping the 2nd and 3rd rows from the previous matrix so $det(C) = 148$ \
  4th matrix is made by multiplying the first row of the previous matrix by (-1/2) so $det(D) = 148 dot (-1/2) =>  -74$
  \
  so finally $det(A B C D) = det(A)det(B)det(C)det(D) = 148 dot (-148) dot 148 dot (-74)$

]


#problem[
  $
    "Compute " det mat(pi, e, 11; 3pi, 3e, 33; 12, -7, 2)
  $
]
#solution[
  $
    "You can easily see that" R_2 = 3 dot R_1, "second row is dependant on the first one so.. " det mat(pi, e, 11; 3pi, 3e, 33; 12, -7, 2) = 0
  $
]
\
\
\
\
\
\
\

\

#problem[
  #align(center, text("Bonus", fill: red, size: 0.6cm))
  $
    "Find the area of the interior" E "of the ellipse defined by the equation": \
    ((2x - y)/(2))^2 + ((y + 3x)/3)^2 = 1
    \
    #text("Hint: ", fill: red)"The ellipse is obtained from the unit circle" X^2 + Y^2 = 1
    "by linear change of coordinates.."
  $
]
#solution[
  $
    X = (2x - y)/(2), space Y = (y + 3x)/3 \
    "We can define the transformation " T : RR^2 -> RR^2 "such that: " \
    T vec(x, y) = vec((2x - y)/(2), (y + 3x)/3) \
    T vec(1, 0) = vec(1, 1), space T vec(0, 1) = vec(-1/2, 1/3)
    ==> A  =mat(1, -1/2; 1, 1/3) \
    #image("Image.png") \
    "Therefore," T "scales areas by a factor of " |det(A)| = 5/6, 
     space"The area of the unit circle is " pi, "so" \
     pi = "vol"(C) = "vol"(T(E)) = |det(A)| dot "vol"(E) = 5/6 "vol"(E) => "vol"(E) ==> pi dot 6/5 \
     
    
  $
]


