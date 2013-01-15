ø = true
∆ = false

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
  [ø, ∆, ∆, ∆, ∆, ∆, ∆, ∆, ∆, ∆, ∆, ∆, ∆, ∆, ∆, ∆ ],
  [ø, ø, ∆, ∆, ∆, ∆, ∆, ∆, ∆, ∆, ∆, ∆, ∆, ∆, ∆, ∆ ],
  [ø, ø, ø, ∆, ∆, ∆, ∆, ∆, ∆, ∆, ∆, ∆, ∆, ∆, ∆, ∆ ],
  [ø, ø, ø, ø, ∆, ∆, ∆, ∆, ∆, ∆, ∆, ∆, ∆, ∆, ∆, ∆ ],
  [ø, ø, ø, ø, ø, ∆, ∆, ∆, ∆, ∆, ∆, ∆, ∆, ∆, ∆, ∆ ],
  [ø, ø, ø, ø, ø, ø, ∆, ∆, ∆, ∆, ∆, ∆, ∆, ∆, ∆, ∆ ],
  [ø, ø, ø, ø, ø, ø, ø, ∆, ∆, ∆, ∆, ∆, ∆, ∆, ∆, ∆ ],
  [ø, ø, ø, ø, ø, ø, ø, ø, ∆, ∆, ∆, ∆, ∆, ∆, ∆, ∆ ],
  [ø, ø, ø, ø, ø, ø, ø, ø, ø, ∆, ∆, ∆, ∆, ∆, ∆, ∆ ],
  [ø, ø, ø, ø, ø, ø, ø, ø, ø, ø, ∆, ∆, ∆, ∆, ∆, ∆ ],
  [ø, ø, ø, ø, ø, ø, ø, ø, ø, ø, ø, ∆, ∆, ∆, ∆, ∆ ],
  [ø, ø, ø, ø, ø, ø, ø, ø, ø, ø, ø, ø, ∆, ∆, ∆, ∆ ],
  [ø, ø, ø, ø, ø, ø, ø, ø, ø, ø, ø, ø, ø, ∆, ∆, ∆ ],
  [ø, ø, ø, ø, ø, ø, ø, ø, ø, ø, ø, ø, ø, ø, ∆, ∆ ],
  [ø, ø, ø, ø, ø, ø, ø, ø, ø, ø, ø, ø, ø, ø, ø, ∆ ],
  [ø, ø, ø, ø, ø, ø, ø, ø, ø, ø, ø, ø, ø, ø, ø, ø ],
]

labelObj =
  pairingMatrix[0]  : a
  pairingMatrix[1]  : b
  pairingMatrix[2]  : c
  pairingMatrix[3]  : d
  pairingMatrix[4]  : e
  pairingMatrix[5]  : f
  pairingMatrix[6]  : g
  pairingMatrix[7]  : h
  pairingMatrix[8]  : i
  pairingMatrix[9]  : j
  pairingMatrix[10] : k
  pairingMatrix[11] : l
  pairingMatrix[12] : m
  pairingMatrix[13] : n
  pairingMatrix[14] : o
  pairingMatrix[15] : p

outputPairs = []

for row in pairingMatrix
  for col in pairingMatrix[row]
    if !col
      pairingMatrix[row][col] = true
      rowNum = row
      colNum = col
      newPair = "#{labelObj.pairingMatrix[rowNum]} + #{labelObj.pairingMatrix[colNum]}"
      outputPairs.push newPair
      #break col loop
      #


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