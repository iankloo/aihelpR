#' aihelpR
#'
#'@export
#'
aihelpR <- function(){
  z <- readline(prompt="Enter your problem: ")

  errors <- c('your syntax is wrong', "you're missing a pipe", "you have an extra pipe",
              "put that in quotes", "take that out of quotes", "you forgot to load the library",
              "you don't have that library installed", "it worked...why are you confused?")

  tmp <- 2
  while(tmp == 2){
    if(length(errors) == 0){
      return("That's all I've got.")
    }
    error <- sample(errors, 1)
    errors <- errors[errors != error]

    print(error)
    tmp <- utils::menu(c("Yes", "No"), title="Did that work?")
  }
}

