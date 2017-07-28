Staples = {
paper: {
  colors: [
    'blue',
    'green',
    'purple'
  ]
},

prices: {
  normal: 0.99,
  fancy: 1.99,
  professional: 2.99
},

pens: {
    felt_tip: 2.00,
    ballpoint: 2.50,
    sharpie: 3.00

  },

folders: {
  types: [
    'two-pocket',
    'laminated',
    'manila'
  ]
}
}
# =>Green paper
p Staples[:paper][:colors][1]
# => Price of normal paper
p Staples[:prices][:normal]
#=>All folders
p Staples[:folders][:types]
#=>Price of felt-tip pen
p Staples[:pens][:felt_tip]