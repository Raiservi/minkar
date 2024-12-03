#Creacio logo
library(hexSticker)
image <- image_read('C:/Logo/m.png')
s <- sticker(image, package="rminka", p_size=28, s_x=1, s_y=.75, s_width=0.8,
             s_height=0.8, p_color = "#000000",
             h_fill="#ffffff", h_color="#000000",
             filename="C:/Logo/minka3.png")
print(s)


