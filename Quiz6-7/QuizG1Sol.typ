#import "@local/noah:0.1.0": *
#set page("presentation-4-3")
#set math.mat(align: right)
#set math.mat(column-gap: 0.7em)

#show figure: it => align(center)[
  #it.body
  #v(10pt, weak: true)
  #emph[#it.supplement #it.counter.display(it.numbering)]: #it.caption 
]




#stack(
  spacing: 3.5pt,
  grid(
  columns: (50%, 50%),
  rows: auto,
  image("thumbnail_KIU2-1.png", height: 1.5cm),
  stack(
    spacing: 1pt,
    align(right)[#text(rgb("#1A3C6E"))[= Quiz (G-1)]],
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


#definition[
  $
  "Consider two" n times n "matrices" A "and" B." We say that" A "is similar to" B  \ "if there exists an invertible matrix" S
  "such that:"
  $
  $
    A S = S B, "  or  " B = S^(-1)A S
  $
]

#problem[
  $
    "is matrix" A = mat(1, 2; 4, 3;) "similar to" B = mat(5, 0; 0, -1) "?"
  $
  
]
#solution[
  We want to find the matrix:
  $   
    S = mat(a, b; c, d) "such that "
    A S = B S "or just "
    mat(a + 2c, b + 2d; 4a + 3c, 4b + 3d) =
    mat(5a, -b; 5c, -d) => c = 2a, " "d = -b
  \ "so " S = mat(a, b; 2a, -b)
  $
]

\
#problem[
  
  $
    "Compute " (3    + 4i)(-2-i/2) - 4+i
    \
    \
    "Compute  " (2-i)/(-1-3i)   "  and then try to plot it "

  $ 
]

#solution[
  $
    (3+4i)(-2 -i/2) -4 + i = (-6 -(3i)/2 - 8i -2i^2) - 4 + i " "
    =^("since" i^2 = -1)\ = (-6-(19i)/2 + 2) - 4 + i = -8 - (17i)/2
  $
  \
  $
    (2-i)/(-1-3i) = ((2-i)(-1+3i))/((-1-3i)(-1+3i))
    = (-2+6i +i -3i^2)/(1-9i^2) = (1 +7i)/10 " Done"
  $
]

#align(left)[
  #figure(
    image("Screenshot 2024-11-07 025718.png", 
  width: 20%),  
)
]




