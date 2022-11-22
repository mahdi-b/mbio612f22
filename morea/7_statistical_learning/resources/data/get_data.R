animal_length = seq(10, 95, 0.5)

k = animal_length * 1.2 + rnorm(171, mean(animal_length), sd(animal_length))

animal_width = seq(2, 20, length=171) + rnorm(171, 5,2)

animal_weight_1 = (1.6 * animal_length)  + rnorm(171, 30, 4)

animal_weight_2 = (0.2 * animal_width) + rnorm(171, 50, 10)


animal_weight = animal_weight_1 + animal_weight_2 + rnorm(171, 60, 30)


data = data.frame(animal_length, animal_width, k, animal_weight_1, animal_weight_2, animal_weight)
write.csv(data,"data/weights_by_len_width.csv", row.names = FALSE)
