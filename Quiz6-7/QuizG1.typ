#import "@local/noah:0.1.0": *
#set page("presentation-4-3")
#set math.mat(align: right)
#set math.mat(column-gap: 0.7em)




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


#problem[
  
  $
    "Compute " (3 + 4i)(-2-i/2) - 4+i
    \
    \
    "Compute  " (2-i)/(-1-3i)   "  and then try to plot it "

  $
  
]


