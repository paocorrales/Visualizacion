

ggplot(datos::diamantes, aes(quilate, precio)) +
  geom_point(aes(color = claridad))+ 
  labs(
    x = "Quilates", 
    y = "Precio ($)", 
    colour = "Claridad",
    title = "Precio de los diamantes"
  )+
  geom_text(aes(label = quilate),
            data = mas_pesado,
            size = 4)+
  annotate('text', x = 4.8, y = 17000, 
           label = 'Máximo', 
           color = 'red', 
           size=3, fontface = 'bold')
  


mas_pesado <- datos::diamantes %>%
  filter(quilate == max(quilate, na.rm = TRUE))
