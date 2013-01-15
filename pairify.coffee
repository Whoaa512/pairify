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
  for col, j in pairingMatrix[row]
    if !col
      pairingMatrix[i][j] = true
      rowNum = i
      colNum = j
      console.log rowNum
      console.log colNum
      newPair = "#{labelObj.rowNum} + #{labelObj.colNum}"
      outputPairs.push newPair
      break

console.log outputPairs

# students =  [
#   "Megan Tulac",
#   "Nathan Houle",
#   "Timothy Schiller",
#   "Adnan Wahab",
#   "JP Whitaker",
#   "Carey Winslow",
#   "Mark Chatkhan",
#   "Christen Thompson",
#   "Sherah Smith",
#   "Mark Rossetti",
#   "Henry Zhu",
#   "Albert Lee",
#   "Paul Bacchus",
#   "Mark Reveley",
#   "Chris Bobek",
#   "June Jeong",
# ]



# # shuffle students array

# # pull last 5 pairings from DB,
# # create hashTable will hold the last five pairings

# # check currentShuffle against hash table for uniqueness

# # if ^check^ passes,
#   # return the currentShuffle & store in DB
#   # remove oldest DB entry