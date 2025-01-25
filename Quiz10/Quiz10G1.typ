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
    "Compute " det mat(0, -7, -4; 2, 4, 6; 3, 7, -1) " and : "
    \
    det (mat(3, 7, -1; 2, 4, 6; 0, -7, -4) times
    mat(2, 4, 6; 3, 7, -1; 0, -7, -4) times
    mat(2, 4, 6; 0, -7, -4; 3, 7, -1) times
    mat(-1, -2, -3; 0, -7, -4; 3, 7, -1) 
    )


  $
]


#problem[
  $
    "Compute " det mat(pi, e, 11; 3pi, 3e, 33; 12, -7, 2)
  $
]

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


