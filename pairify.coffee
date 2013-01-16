tt = true
Ff = false

a =  "Megan Tulac"
b =  "Nathan Houle"
c =  "Timothy Schiller"
d =  "Adnan Wahab"
e =  "JP Whitaker"
f =  "Carey Winslow"
g =  "Mark Chatkhan"
h =  "Christen Thompson"
i =  "Sherah Smith"
j =  "Mark Rossetti"
k =  "Henry Zhu"
l =  "Albert Lee"
m =  "Paul Bacchus"
n =  "Mark Reveley"
o =  "Chris Bobek"
p =  "June Jeong"

isPaired =
  a   :  false
  b   :  false
  c   :  false
  d   :  false
  e   :  false
  f   :  false
  g   :  false
  h   :  false
  i   :  false
  j   :  false
  k   :  false
  l   :  false
  m   :  false
  n   :  false
  o   :  false
  p   :  false

pairingMatrix = [
  [tt, Ff, Ff, Ff, Ff, Ff, Ff, Ff, Ff, Ff, Ff, Ff, Ff, Ff, Ff, Ff ],
  [tt, tt, Ff, Ff, Ff, Ff, Ff, Ff, Ff, Ff, Ff, Ff, Ff, Ff, Ff, Ff ],
  [tt, tt, tt, Ff, Ff, Ff, Ff, Ff, Ff, Ff, Ff, Ff, Ff, Ff, Ff, Ff ],
  [tt, tt, tt, tt, Ff, Ff, Ff, Ff, Ff, Ff, Ff, Ff, Ff, Ff, Ff, Ff ],
  [tt, tt, tt, tt, tt, Ff, Ff, Ff, Ff, Ff, Ff, Ff, Ff, Ff, Ff, Ff ],
  [tt, tt, tt, tt, tt, tt, Ff, Ff, Ff, Ff, Ff, Ff, Ff, Ff, Ff, Ff ],
  [tt, tt, tt, tt, tt, tt, tt, Ff, Ff, Ff, Ff, Ff, Ff, Ff, Ff, Ff ],
  [tt, tt, tt, tt, tt, tt, tt, tt, Ff, Ff, Ff, Ff, Ff, Ff, Ff, Ff ],
  [tt, tt, tt, tt, tt, tt, tt, tt, tt, Ff, Ff, Ff, Ff, Ff, Ff, Ff ],
  [tt, tt, tt, tt, tt, tt, tt, tt, tt, tt, Ff, Ff, Ff, Ff, Ff, Ff ],
  [tt, tt, tt, tt, tt, tt, tt, tt, tt, tt, tt, Ff, Ff, Ff, Ff, Ff ],
  [tt, tt, tt, tt, tt, tt, tt, tt, tt, tt, tt, tt, Ff, Ff, Ff, Ff ],
  [tt, tt, tt, tt, tt, tt, tt, tt, tt, tt, tt, tt, tt, Ff, Ff, Ff ],
  [tt, tt, tt, tt, tt, tt, tt, tt, tt, tt, tt, tt, tt, tt, Ff, Ff ],
  [tt, tt, tt, tt, tt, tt, tt, tt, tt, tt, tt, tt, tt, tt, tt, Ff ],
  [tt, tt, tt, tt, tt, tt, tt, tt, tt, tt, tt, tt, tt, tt, tt, tt ],
]

labelObj =
  0  : a
  1  : b
  2  : c
  3  : d
  4  : e
  5  : f
  6  : g
  7  : h
  8  : i
  9  : j
  10 : k
  11 : l
  12 : m
  13 : n
  14 : o
  15 : p

outputPairs = []

for row, i in pairingMatrix
  for col, j in pairingMatrix[i]

    # logic to skip rows that where a pair was already made
    # if pairingMatrix[i-1] != undefined
    #   if( pairingMatrix[i-1][i] ) then break
    if !col and (!isPaired[labelObj[i]] and !isPaired[labelObj[j]])
      col = true
      newPair = "#{labelObj[i]} + #{labelObj[j]}"
      isPaired[labelObj[i]] = true
      isPaired[labelObj[j]] = true
      outputPairs.push newPair
      break

console.log outputPairs
